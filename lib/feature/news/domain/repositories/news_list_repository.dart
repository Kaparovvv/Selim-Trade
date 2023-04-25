import 'package:dartz/dartz.dart';
import 'package:selim_trade_app/feature/news/domain/entities/news_list/news_list_entity.dart';

import '../../../../core/error/failure.dart';

abstract class NewsListRepository {
  Future<Either<Failure, List<NewsListEntity>>> getNewsList(
    String pageNo,
    int pageSize,
    String sortBy,
  );
}
