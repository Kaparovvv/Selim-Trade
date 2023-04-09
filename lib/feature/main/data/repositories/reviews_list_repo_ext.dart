import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/error/cache_exception.dart';
import 'package:selim_trade_app/core/error/server_exception.dart';
import 'package:selim_trade_app/core/platform/network_info.dart';
import 'package:selim_trade_app/feature/main/data/data_sources/reviews/reviews_local_source.dart';
import 'package:selim_trade_app/feature/main/data/data_sources/reviews/reviews_remote_source.dart';
import 'package:selim_trade_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:selim_trade_app/feature/main/domain/repositories/reviews_repository.dart';

import '../../domain/entities/reviews/reviews_entity.dart';
import '../models/reviews/reviews_model.dart';

@Singleton(as: ReviewsListRepository)
class ReviewsListReposiExt extends ReviewsListRepository {
  final ReviewsListLocalDataSource localDataSource;
  final ReviewsListRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  ReviewsListReposiExt({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<ReviewsEntity>>> getReviewsList(
    String pageNo,
    int pageSize,
    String sortBy,
  ) async {
    return await _getReviewsList(
      () => remoteDataSource.getReviewsList(pageNo, pageSize, sortBy),
    );
  }

  Future<Either<Failure, List<ReviewsEntity>>> _getReviewsList(
    Future<List<ReviewsModel>> Function() getReviewsList,
  ) async {
    if (await networkInfo.isConnected == ConnectivityResult.mobile ||
        await networkInfo.isConnected == ConnectivityResult.wifi) {
      try {
        final remoteReviewsList = await getReviewsList();
        localDataSource.reviewsListToCache(remoteReviewsList);
        return Right(remoteReviewsList);
      } on ServerException {
        throw Left(ServerFailure(errorCode: 0));
      }
    } else {
      try {
        final localReviewsList = await localDataSource.reviewsListFromCache();
        return Right(localReviewsList);
      } on CacheException {
        return Left(CacheFailure(''));
      }
    }
  }
}
