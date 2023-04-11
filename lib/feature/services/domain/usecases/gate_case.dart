import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/core/usecases/usecases.dart';
import 'package:selim_trade_app/feature/services/domain/entities/gate/gate_entity.dart';
import 'package:selim_trade_app/feature/services/domain/repositories/gate_repository.dart';

@singleton
class GateCase extends UseCase<GateEntity, GateParams> {
  final GateRepository gatesRepository;

  GateCase({required this.gatesRepository});

  @override
  Future<Either<Failure, GateEntity>> call(GateParams params) async {
    return await gatesRepository.getGate(params.gateId);
  }
}

class GateParams extends Equatable {
  final int gateId;

  const GateParams({required this.gateId});
  @override
  List<Object?> get props => [gateId];
}
