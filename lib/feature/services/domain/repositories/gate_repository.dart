import 'package:dartz/dartz.dart';
import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/feature/services/domain/entities/gate/gate_entity.dart';

abstract class GateRepository {
  Future<Either<Failure, GateEntity>> getGate(
    int gateId,
  );
}
