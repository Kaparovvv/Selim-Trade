import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/error/cache_exception.dart';
import 'package:selim_trade_app/core/error/server_exception.dart';
import 'package:selim_trade_app/core/convert_models/models_convert.dart';
import 'package:selim_trade_app/core/platform/network_info.dart';
import 'package:selim_trade_app/feature/news/data/data_sources/news_list/news_local_source.dart';
import 'package:selim_trade_app/feature/news/data/data_sources/news_list/news_remote_source.dart';
import 'package:selim_trade_app/feature/news/data/models/news_list/news_list_model.dart';
import 'package:selim_trade_app/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:selim_trade_app/feature/news/domain/entities/news_list/news_list_entity.dart';
import 'package:selim_trade_app/feature/news/domain/repositories/news_list_repository.dart';

@Singleton(as: NewsListRepository)
class NewsListRepositoryExt extends NewsListRepository {
  final NewsListLocalDataSource localDataSource;
  final NewsListRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  NewsListRepositoryExt({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<NewsListEntity>>> getNewsList(
    String pageNo,
    int pageSize,
    String sortBy,
  ) async {
    return await _getNewsList(
      () => remoteDataSource.getNewsList(pageNo, pageSize, sortBy),
    );
  }

  Future<Either<Failure, List<NewsListEntity>>> _getNewsList(
    Future<List<NewsListModel>> Function() getNewsList,
  ) async {
    if (await networkInfo.isConnected == ConnectivityResult.mobile ||
        await networkInfo.isConnected == ConnectivityResult.wifi) {
      try {
        final remoteNewsList = await getNewsList();
        localDataSource.newsListToCache(remoteNewsList);
        var newsListModel = remoteNewsList
            .map((newsModel) => newsListModelToEntity(newsModel))
            .toList();
        return Right(newsListModel);
      } on ServerException {
        return Left(ServerFailure(errorCode: 0));
      }
    } else {
      try {
        final localNewsList = await localDataSource.newsListFromCache();
        return Right(localNewsList
            .map((newsModel) => newsListModelToEntity(newsModel))
            .toList());
      } on CacheException {
        throw Left(CacheFailure(''));
      }
    }
  }
}
