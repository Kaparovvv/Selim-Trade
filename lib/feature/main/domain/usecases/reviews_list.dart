import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/default_params/default_params.dart';
import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/feature/main/domain/entities/reviews_entity.dart';
import 'package:selim_trade_app/feature/main/domain/repositories/reviews_repository.dart';

import '../../../../core/usecases/usecases.dart';

@singleton
class ReviewsList extends UseCase<List<ReviewsEntity>, DefaultParams> {
  final ReviewsListRepository reviewsListRepo;

  ReviewsList({required this.reviewsListRepo});

  @override
  Future<Either<Failure, List<ReviewsEntity>>> call(
    DefaultParams params,
  ) async {
    return await reviewsListRepo.getReviewsList(
      params.pageNo ?? '',
      params.pageSize ?? 10,
      params.sortBy ?? '',
    );
  }
}
