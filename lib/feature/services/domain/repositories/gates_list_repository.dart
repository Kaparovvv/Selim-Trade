import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/gates_list_entity.dart';

abstract class GatesListRepository {
  Future<Either<Failure, List<GatesListEntity>>> getGatesList(
    String pageNo,
    int pageSize,
    String sortBy,
  );
}
