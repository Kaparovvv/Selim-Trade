import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/news/news_entity.dart';
import '../../../domain/usecases/news_case.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

@Singleton(dependsOn: [NewsCase])
class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsCase newsCase;
  NewsBloc({required this.newsCase}) : super(const _Initial()) {
    on<GetNewsListEvent>((event, emit) async {
      emit(const NewsState.loading());
      final result = await newsCase(NewsParams(
        pageSize: event.pageSize,
      ));
      result.fold(
          (failure) => emit(NewsState.error(message: failure.toString())),
          (newsList) => emit(NewsState.loaded(newsListEntity: newsList)));
    });
  }
}
