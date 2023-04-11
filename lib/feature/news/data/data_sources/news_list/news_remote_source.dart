import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/api_urls/api_urls.dart';
import 'package:selim_trade_app/core/error/server_exception.dart';
import 'package:selim_trade_app/core/services/api_requester.dart';
import 'package:selim_trade_app/feature/news/data/models/news_list/news_list_model.dart';
import 'package:selim_trade_app/utils/injection.dart';

abstract class NewsListRemoteDataSource {
  Future<List<NewsListModel>> getNewsList(
    String pageNo,
    int pageSize,
    String sortBy,
  );
}

@Singleton(as: NewsListRemoteDataSource)
class NewsListRemoteDataSourceImpl implements NewsListRemoteDataSource {
  @override
  Future<List<NewsListModel>> getNewsList(
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
      log('Get News List status code === ${response.statusCode}');
      var newsList = response.data['content'];

      List<NewsListModel> newsListModel = newsList
          .map<NewsListModel>((news) => NewsListModel.fromJson(news))
          .toList();
      return newsListModel;
    } else {
      int errorCode = response.statusCode!;
      throw ServerException.getErrorMessage(errorCode);
    }
  }
}
