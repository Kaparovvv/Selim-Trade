part of 'reviews_bloc.dart';

@freezed
class ReviewsState with _$ReviewsState {
  const factory ReviewsState.initial() = _Initial;
  const factory ReviewsState.loading() = LoadingReviewsListState;
  const factory ReviewsState.loaded({
    required List<ReviewsEntity> reviewsListEntity,
  }) = LoadedReviewsListState;
  const factory ReviewsState.error({
    required String message,
  }) = ErrorReviewsListState;
}
