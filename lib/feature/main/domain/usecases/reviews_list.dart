import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/feature/main/domain/entities/reviews/reviews_entity.dart';
import 'package:selim_trade_app/feature/main/domain/repositories/reviews_repository.dart';

import '../../../../core/usecases/usecases.dart';

@singleton
class ReviewsList extends UseCase<List<ReviewsEntity>, ReviewsParams> {
  final ReviewsListRepository reviewsListRepo;

  ReviewsList({required this.reviewsListRepo});

  @override
  Future<Either<Failure, List<ReviewsEntity>>> call(
    ReviewsParams params,
  ) async {
    return await reviewsListRepo.getReviewsList(
      params.pageNo ?? '',
      params.pageSize ?? 5,
      params.sortBy ?? '',
    );
  }
}

class ReviewsParams extends Equatable {
  final String? pageNo;
  final int? pageSize;
  final String? sortBy;

  const ReviewsParams({
    this.pageNo,
    this.pageSize,
    this.sortBy,
  });

  @override
  List<Object?> get props => [
        pageNo,
        pageSize,
        sortBy,
      ];
}
