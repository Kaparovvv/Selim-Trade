import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/error/cache_exception.dart';
import 'package:selim_trade_app/core/error/server_exception.dart';
import 'package:selim_trade_app/core/extension/models/news_model_ext.dart';
import 'package:selim_trade_app/core/platform/network_info.dart';
import 'package:selim_trade_app/feature/news/data/data_sources/news_local_source.dart';
import 'package:selim_trade_app/feature/news/data/data_sources/news_remote_source.dart';
import 'package:selim_trade_app/feature/news/domain/entities/news/news_entity.dart';
import 'package:selim_trade_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:selim_trade_app/feature/news/domain/repositories/news_repository.dart';

import '../models/news_model.dart';

@Singleton(as: NewsRepository)
class NewsRepositoryExt extends NewsRepository {
  final NewsLocalDataSource localDataSource;
  final NewsRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  NewsRepositoryExt({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<NewsEntity>>> getNewsList(
    String pageNo,
    int pageSize,
    String sortBy,
  ) async {
    return await _getNewsList(
      () => remoteDataSource.getNewsList(pageNo, pageSize, sortBy),
    );
  }

  Future<Either<Failure, List<NewsEntity>>> _getNewsList(
    Future<List<NewsModel>> Function() getNewsList,
  ) async {
    if (await networkInfo.isConnected == ConnectivityResult.mobile ||
        await networkInfo.isConnected == ConnectivityResult.wifi) {
      try {
        final remoteNewsList = await getNewsList();
        localDataSource.newsListToCache(remoteNewsList);
        var newsListModel = remoteNewsList
            .map((newsModel) => newsModelToEntity(newsModel))
            .toList();
        return Right(newsListModel);
      } on ServerException {
        return Left(ServerFailure(errorCode: 0));
      }
    } else {
      try {
        final localNewsList = await localDataSource.newsListFromCache();
        return Right(localNewsList
            .map((newsModel) => newsModelToEntity(newsModel))
            .toList());
      } on CacheException {
        throw Left(CacheFailure(''));
      }
    }
  }
}
