import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/services/api_requester.dart';
import 'package:selim_trade_app/feature/main/data/models/reviews/reviews_model.dart';
import 'package:selim_trade_app/utils/injection.dart';

import '../../../../../core/api_urls/api_urls.dart';
import '../../../../../core/error/server_exception.dart';

abstract class ReviewsListRemoteDataSource {
  Future<List<ReviewsModel>> getReviewsList(
    String pageNo,
    int pageSize,
    String sortBy,
  );
}

@Singleton(as: ReviewsListRemoteDataSource)
class ReviewsListRemoteDataSourceImpl implements ReviewsListRemoteDataSource {
  @override
  Future<List<ReviewsModel>> getReviewsList(
    String pageNo,
    int pageSize,
    String sortBy,
  ) async {
    var requester = getIt<ApiClient>();
    Response response = await requester.toGet(
      ApiUrls.reviewsListUrl(),
      queryParameters: {
        "pageNo": pageNo,
        "pageSize": pageSize,
        "sortBy": sortBy,
      },
    );

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      log('Get Reviews status code === ${response.statusCode}');
      // log('Get Reviews data === ${response.data['content']}');

      var reviewsList = response.data['content'];

      List<ReviewsModel> reviewsListModel = reviewsList
          .map<ReviewsModel>((el) => ReviewsModel.fromJson(el))
          .toList();
      return reviewsListModel;
    } else {
      int errorCode = response.statusCode!;
      throw ServerException.getErrorMessage(errorCode);
    }
  }
}
