import 'package:dartz/dartz.dart';
import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/feature/news/domain/entities/news/news_entity.dart';

abstract class NewsRepository {
  Future<Either<Failure, List<NewsEntity>>> getNewsList(
    String pageNo,
    int pageSize,
    String sortBy,
  );
}
