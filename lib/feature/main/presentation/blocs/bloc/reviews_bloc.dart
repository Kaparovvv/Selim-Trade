import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/default_params/default_params.dart';
import 'package:selim_trade_app/feature/main/domain/entities/reviews_entity.dart';
import 'package:selim_trade_app/feature/main/domain/usecases/reviews_list.dart';

part 'reviews_event.dart';
part 'reviews_state.dart';
part 'reviews_bloc.freezed.dart';

@Singleton(dependsOn: [ReviewsList])
class ReviewsBloc extends Bloc<ReviewsEvent, ReviewsState> {
  final ReviewsList reviewsList;
  ReviewsBloc({required this.reviewsList})
      : super(const ReviewsState.initial()) {
    on<GetReviewsListEvent>((event, emit) async {
      emit(const ReviewsState.loading());
      final result = await reviewsList(const DefaultParams());
      result.fold(
          (failure) => emit(ReviewsState.error(message: failure.toString())),
          (reviewsList) {
        log('Reviews Bloc ======= ${reviewsList.length}');

        emit(ReviewsState.loaded(reviewsListEntity: reviewsList));
      });
    });
  }
}
