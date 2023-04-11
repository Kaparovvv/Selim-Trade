// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/convert_models/models_convert.dart';

import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/core/platform/network_info.dart';
import 'package:selim_trade_app/feature/our_works/data/data_source/works_local_source.dart';
import 'package:selim_trade_app/feature/our_works/data/data_source/works_remote_source.dart';
import 'package:selim_trade_app/feature/our_works/data/models/works_model.dart';
import 'package:selim_trade_app/feature/our_works/domain/entities/works_entity.dart';
import 'package:selim_trade_app/feature/our_works/domain/repositories/works_repository.dart';

import '../../../../core/error/cache_exception.dart';
import '../../../../core/error/server_exception.dart';

@Singleton(as: WorksRepository)
class WorksRepositoryExt extends WorksRepository {
  final WorksLocalDataSource localDataSource;
  final WorksRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  WorksRepositoryExt({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<WorksEntity>>> getWorksList(
    String pageNo,
    int pageSize,
    String sortBy,
  ) async {
    return await _getWorksList(
      () => remoteDataSource.getWorksList(pageNo, pageSize, sortBy),
    );
  }

  Future<Either<Failure, List<WorksEntity>>> _getWorksList(
    Future<List<WorksModel>> Function() getWorksList,
  ) async {
    if (await networkInfo.isConnected == ConnectivityResult.mobile ||
        await networkInfo.isConnected == ConnectivityResult.wifi) {
      try {
        final remoteWorksList = await getWorksList();
        localDataSource.worksListToCache(remoteWorksList);
        var worksListModel =
            remoteWorksList.map((work) => worksModelToEntity(work)).toList();

        return Right(worksListModel);
      } on ServerException {
        return Left(ServerFailure(errorCode: 0));
      }
    } else {
      try {
        final localWorksList = await localDataSource.worksListFromCache();
        return Right(
            localWorksList.map((work) => worksModelToEntity(work)).toList());
      } on CacheException {
        throw Left(CacheFailure(''));
      }
    }
  }
}
