// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/core/usecases/usecases.dart';
import 'package:selim_trade_app/feature/news/domain/repositories/news_repository.dart';

import '../entities/news/news_entity.dart';

@singleton
class NewsCase extends UseCase<NewsEntity, NewsParams> {
  final NewsRepository newsRepository;

  NewsCase({required this.newsRepository});
  @override
  Future<Either<Failure, NewsEntity>> call(NewsParams params) async {
    return await newsRepository.getNews(params.newsId);
  }
}

class NewsParams extends Equatable {
  final int newsId;
  const NewsParams({required this.newsId});

  @override
  List<Object?> get props => [newsId];
}
