import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/api_urls/api_urls.dart';
import 'package:selim_trade_app/core/error/server_exception.dart';
import 'package:selim_trade_app/core/services/api_requester.dart';
import 'package:selim_trade_app/feature/news/data/models/news_model.dart';
import 'package:selim_trade_app/utils/injection.dart';

abstract class NewsRemoteDataSource {
  Future<List<NewsModel>> getNewsList(
    String pageNo,
    int pageSize,
    String sortBy,
  );
}

@Singleton(as: NewsRemoteDataSource)
class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  @override
  Future<List<NewsModel>> getNewsList(
    String pageNo,
    int pageSize,
    String sortBy,
  ) async {
    var requester = getIt<ApiClient>();
    Response response = await requester.toGet(
      ApiUrls.newsListUrl(),
      queryParameters: {
        "pageNo": pageNo,
        "pageSize": pageSize,
        "sortBy": sortBy,
      },
    );

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      log('Get News status code === ${response.statusCode}');
      var newsList = response.data['content'];

      List<NewsModel> newsListModel =
          newsList.map<NewsModel>((news) => NewsModel.fromJson(news)).toList();
      return newsListModel;
    } else {
      int errorCode = response.statusCode!;
      throw ServerException.getErrorMessage(errorCode);
    }
  }
}
