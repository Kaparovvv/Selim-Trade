import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/default_params/default_params.dart';
import '../../../domain/entities/news/news_entity.dart';
import '../../../domain/entities/news_list/news_list_entity.dart';
import '../../../domain/usecases/news_case.dart';
import '../../../domain/usecases/news_list_case.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

@Singleton(dependsOn: [NewsCase, NewsListCase])
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsCase newsCase;
  final NewsListCase newsListCase;
  NewsBloc({
    required this.newsCase,
    required this.newsListCase,
  }) : super(const _Initial()) {
    on<GetNewsListEvent>((event, emit) async {
      emit(const NewsState.loading());
      final result = await newsListCase(DefaultParams(
        pageSize: event.pageSize,
      ));
      result.fold(
        (failure) => emit(
          NewsState.error(message: failure.toString()),
        ),
        (newsList) => emit(
          NewsState.loadedNewsList(newsListEntity: newsList),
        ),
      );
    });

    on<GetNewsEvent>((event, emit) async {
      emit(const NewsState.loading());
      final result = await newsCase(NewsParams(newsId: event.newsId));
      result.fold(
        (failure) => NewsState.error(message: failure.serverException()),
        (news) => NewsState.loadedNews(newsEntity: news),
      );
    });
  }
}
