import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/core/usecases/usecases.dart';

import '../entities/news/news_entity.dart';
import '../repositories/news_repository.dart';

@singleton
class NewsCase extends UseCase<List<NewsEntity>, NewsParams> {
  final NewsRepository newsRepository;

  NewsCase({required this.newsRepository});
  @override
  Future<Either<Failure, List<NewsEntity>>> call(NewsParams params) async {
    return await newsRepository.getNewsList(
      params.pageNo ?? '',
      params.pageSize ?? 6,
      params.sortBy ?? '',
    );
  }
}

class NewsParams extends Equatable {
  final String? pageNo;
  final int? pageSize;
  final String? sortBy;

  const NewsParams({
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
