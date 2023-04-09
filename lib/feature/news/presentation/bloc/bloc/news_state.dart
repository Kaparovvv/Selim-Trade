part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = _Initial;
  const factory NewsState.loading() = LoadingNewsListState;
  const factory NewsState.loaded({required List<NewsEntity> newsListEntity}) =
      LoadedNewsListState;
  const factory NewsState.error({required String message}) = ErrorNewsListState;
}
