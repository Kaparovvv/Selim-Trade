import 'package:dartz/dartz.dart';
import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/feature/our_works/domain/entities/works_entity.dart';

abstract class WorksRepository {
  Future<Either<Failure, List<WorksEntity>>> getWorksList(
    String pageNo,
    int pageSize,
    String sortBy,
  );
}
