part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = _Initial;
  const factory NewsState.loading() = LoadingNewsState;
  const factory NewsState.loadedNewsList(
      {required List<NewsListEntity> newsListEntity}) = LoadedNewsListState;
  const factory NewsState.loadedNews({required NewsEntity newsEntity}) =
      LoadedNewsState;
  const factory NewsState.error({required String message}) = ErrorNewsState;
}
