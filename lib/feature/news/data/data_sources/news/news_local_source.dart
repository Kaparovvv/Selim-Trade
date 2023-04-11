// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/commons/cache_names_helper.dart';
import 'package:selim_trade_app/core/error/cache_exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/news/news_model.dart';

abstract class NewsLocalDataSource {
  Future<NewsModel> newsFromCache();
  Future<void> newsToCache(NewsModel newsModel);
}

@Singleton(as: NewsLocalDataSource)
class NewsLocalDataSourceImpl implements NewsLocalDataSource {
  final SharedPreferences sharedPreferences;

  NewsLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<NewsModel> newsFromCache() {
    final jsonNews = sharedPreferences.getString(CacheNamesHelper.news);
    if (jsonNews!.isNotEmpty) {
      return Future.value(
        NewsModel.fromJson(jsonDecode(jsonNews)),
      );
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> newsToCache(NewsModel newsModel) {
    return sharedPreferences.setString(
      CacheNamesHelper.news,
      json.encode(newsModel.toJson()),
    );
  }
}
