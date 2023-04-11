import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/api_urls/api_urls.dart';
import 'package:selim_trade_app/core/services/api_requester.dart';
import 'package:selim_trade_app/feature/news/data/models/news/news_model.dart';
import 'package:selim_trade_app/utils/injection.dart';

import '../../../../../core/error/server_exception.dart';

abstract class NewsRemoteDataSource {
  Future<NewsModel> getNews(int newsId);
}

@Singleton(as: NewsRemoteDataSource)
class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  @override
  Future<NewsModel> getNews(int newsId) async {
    var requester = getIt<ApiClient>();
    Response response = await requester.toGet(ApiUrls.newsUrl(newsId));
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      log('Get News status code === ${response.statusCode}');
      NewsModel newsModel = NewsModel.fromJson(response.data);
      return newsModel;
    } else {
      int errorCode = response.statusCode!;
      throw ServerException.getErrorMessage(errorCode);
    }
  }
}
