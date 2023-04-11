import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/convert_models/models_convert.dart';

import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/core/platform/network_info.dart';
import 'package:selim_trade_app/feature/services/data/data_source/gate/gate_local_souce.dart';
import 'package:selim_trade_app/feature/services/data/data_source/gate/gate_remote_source.dart';
import 'package:selim_trade_app/feature/services/data/models/gate/gate_model.dart';
import 'package:selim_trade_app/feature/services/domain/entities/gate/gate_entity.dart';
import 'package:selim_trade_app/feature/services/domain/repositories/gate_repository.dart';

import '../../../../core/error/cache_exception.dart';
import '../../../../core/error/server_exception.dart';

@Singleton(as: GateRepository)
class GateRepositoryExt extends GateRepository {
  GateRepositoryExt({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  final GateRemoteDataSource remoteDataSource;
  final GateLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, GateEntity>> getGate(int gateId) async {
    return await _getGate(() => remoteDataSource.getGate(gateId));
  }

  Future<Either<Failure, GateEntity>> _getGate(
    Future<GateModel> Function() getGate,
  ) async {
    if (await networkInfo.isConnected == ConnectivityResult.mobile ||
        await networkInfo.isConnected == ConnectivityResult.wifi) {
      try {
        final remoteGate = await getGate();
        localDataSource.gateToCache(remoteGate);
        return Right(gateModelToEntity(remoteGate));
      } on ServerException {
        return Left(ServerFailure(errorCode: 0));
      }
    } else {
      try {
        final localGate = await localDataSource.gateFromCache();
        return Right(gateModelToEntity(localGate));
      } on CacheException {
        throw Left(CacheFailure(''));
      }
    }
  }
}
