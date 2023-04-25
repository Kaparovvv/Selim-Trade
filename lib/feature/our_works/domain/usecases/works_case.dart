// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:selim_trade_app/core/default_params/default_params.dart';
import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/core/usecases/usecases.dart';
import 'package:selim_trade_app/feature/our_works/domain/entities/works_entity.dart';
import 'package:selim_trade_app/feature/our_works/domain/repositories/works_repository.dart';

@singleton
class WorksCase extends UseCase<List<WorksEntity>, DefaultParams> {
  final WorksRepository worksRepository;

  WorksCase({required this.worksRepository});
  @override
  Future<Either<Failure, List<WorksEntity>>> call(DefaultParams params) async {
    return await worksRepository.getWorksList(
      params.pageNo ?? '',
      params.pageSize ?? 10,
      params.sortBy ?? '',
    );
  }
}
