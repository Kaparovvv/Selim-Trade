import 'package:dartz/dartz.dart';
import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/feature/main/domain/entities/reviews_entity.dart';

abstract class ReviewsListRepository {
  Future<Either<Failure, List<ReviewsEntity>>> getReviewsList(
    String pageNo,
    int pageSize,
    String sortBy,
  );
}
