import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/commons/cache_names_helper.dart';
import 'package:selim_trade_app/core/error/cache_exception.dart';
import 'package:selim_trade_app/feature/news/data/models/news_list/news_list_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class NewsListLocalDataSource {
  Future<List<NewsListModel>> newsListFromCache();
  Future<void> newsListToCache(List<NewsListModel> newsListModel);
}

@Singleton(as: NewsListLocalDataSource)
class NewsListLocalDataSourceImpl implements NewsListLocalDataSource {
  final SharedPreferences sharedPreferences;

  NewsListLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<List<NewsListModel>> newsListFromCache() {
    final jsonNewsList =
        sharedPreferences.getStringList(CacheNamesHelper.newsList);
    if (jsonNewsList!.isNotEmpty) {
      return Future.value(jsonNewsList
          .map((news) => NewsListModel.fromJson(json.decode(news)))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> newsListToCache(List<NewsListModel> newsListModel) {
    final List<String> newsList =
        newsListModel.map((news) => json.encode(news.toJson())).toList();
    sharedPreferences.setStringList(CacheNamesHelper.newsList, newsList);
    // ignore: void_checks
    return Future.value(newsList);
  }
}
