// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/convert_models/models_convert.dart';

import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/core/platform/network_info.dart';
import 'package:selim_trade_app/feature/news/data/data_sources/news/news_local_source.dart';
import 'package:selim_trade_app/feature/news/data/data_sources/news/news_remote_source.dart';
import 'package:selim_trade_app/feature/news/data/models/news/news_model.dart';
import 'package:selim_trade_app/feature/news/domain/entities/news/news_entity.dart';
import 'package:selim_trade_app/feature/news/domain/repositories/news_repository.dart';

import '../../../../core/error/cache_exception.dart';
import '../../../../core/error/server_exception.dart';

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
  Future<Either<Failure, NewsEntity>> getNews(int newsId) async {
    return await _getNews(() => remoteDataSource.getNews(newsId));
  }

  Future<Either<Failure, NewsEntity>> _getNews(
    Future<NewsModel> Function() getNews,
  ) async {
    if (await networkInfo.isConnected == ConnectivityResult.mobile ||
        await networkInfo.isConnected == ConnectivityResult.wifi) {
      try {
        final remoteNews = await getNews();
        localDataSource.newsToCache(remoteNews);
        return Right(newsModelToEntity(remoteNews));
      } on ServerException {
        return Left(ServerFailure(errorCode: 0));
      }
    } else {
      try {
        final localNews = await localDataSource.newsFromCache();
        return Right(newsModelToEntity(localNews));
      } on CacheException {
        throw Left(CacheFailure(''));
      }
    }
  }
}
