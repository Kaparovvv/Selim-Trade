// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/convert_models/models_convert.dart';

import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/core/platform/network_info.dart';
import 'package:selim_trade_app/feature/services/data/data_source/gate_list/gate_list_local_source.dart';
import 'package:selim_trade_app/feature/services/data/data_source/gate_list/gate_list_remote_source.dart';
import 'package:selim_trade_app/feature/services/data/models/gates_list/gates_list_model.dart';
import 'package:selim_trade_app/feature/services/domain/entities/gates_list_entity.dart';
import 'package:selim_trade_app/feature/services/domain/repositories/gates_list_repository.dart';

import '../../../../core/error/cache_exception.dart';
import '../../../../core/error/server_exception.dart';

@Singleton(as: GatesListRepository)
class GatesListRepositoryExt extends GatesListRepository {
  GatesListRepositoryExt({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.networkInfo,
  });

  final GateListLocalDataSource localDataSource;
  final GateListRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, List<GatesListEntity>>> getGatesList(
    String pageNo,
    int pageSize,
    String sortBy,
  ) async {
    return await _getGatesList(
      () => remoteDataSource.getGateList(pageNo, pageSize, sortBy),
    );
  }

  Future<Either<Failure, List<GatesListEntity>>> _getGatesList(
    Future<List<GatesListModel>> Function() getGatesList,
  ) async {
    if (await networkInfo.isConnected == ConnectivityResult.mobile ||
        await networkInfo.isConnected == ConnectivityResult.wifi) {
      try {
        final remoteGatesList = await getGatesList();
        localDataSource.gateListToCache(remoteGatesList);
        var gatesModelList = remoteGatesList
            .map((gatesList) => gateListModelToEntity(gatesList))
            .toList();
        return Right(gatesModelList);
      } on ServerException {
        return Left(ServerFailure(errorCode: 0));
      }
    } else {
      try {
        final localGatesList = await localDataSource.gatesListFromCache();
        return Right(localGatesList
            .map((gateList) => gateListModelToEntity(gateList))
            .toList());
      } on CacheException {
        throw Left(CacheFailure(''));
      }
    }
  }
}
