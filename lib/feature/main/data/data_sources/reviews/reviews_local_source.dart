import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/commons/cache_names_helper.dart';
import 'package:selim_trade_app/core/error/cache_exception.dart';
import 'package:selim_trade_app/feature/main/data/models/reviews/reviews_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ReviewsListLocalDataSource {
  Future<List<ReviewsModel>> reviewsListFromCache();
  Future<void> reviewsListToCache(List<ReviewsModel> reviewsListModel);
}

@Singleton(as: ReviewsListLocalDataSource)
class ReviewsListLocalDataSourceImpl extends ReviewsListLocalDataSource {
  final SharedPreferences sharedPreferences;

  ReviewsListLocalDataSourceImpl({required this.sharedPreferences});
  @override
  Future<List<ReviewsModel>> reviewsListFromCache() {
    final jsonReviewsList =
        sharedPreferences.getStringList(CacheNamesHelper.reviewsList);
    if (jsonReviewsList!.isNotEmpty) {
      return Future.value(jsonReviewsList
          .map((reviews) => ReviewsModel.fromJson(json.decode(reviews)))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> reviewsListToCache(List<ReviewsModel> reviewsListModel) {
    final List<String> reviewsList = reviewsListModel
        .map((reviews) => json.encode(reviews.toJson()))
        .toList();
    sharedPreferences.setStringList(CacheNamesHelper.reviewsList, reviewsList);
    // ignore: void_checks
    return Future.value(reviewsList);
  }
}
