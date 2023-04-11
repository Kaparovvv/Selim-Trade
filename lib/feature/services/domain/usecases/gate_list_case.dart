import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/default_params/default_params.dart';
import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/core/usecases/usecases.dart';
import 'package:selim_trade_app/feature/services/domain/entities/gates_list_entity.dart';
import 'package:selim_trade_app/feature/services/domain/repositories/gates_list_repository.dart';

@singleton
class GateListCase extends UseCase<List<GatesListEntity>, DefaultParams> {
  final GatesListRepository gatesListRepository;

  GateListCase({required this.gatesListRepository});

  @override
  Future<Either<Failure, List<GatesListEntity>>> call(
      DefaultParams params) async {
    return await gatesListRepository.getGatesList(
      params.pageNo ?? '',
      params.pageSize ?? 3,
      params.sortBy ?? '',
    );
  }
}
