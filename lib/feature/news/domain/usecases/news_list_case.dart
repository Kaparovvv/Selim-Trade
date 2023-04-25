// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/default_params/default_params.dart';

import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/core/usecases/usecases.dart';
import 'package:selim_trade_app/feature/news/domain/entities/news_list/news_list_entity.dart';
import 'package:selim_trade_app/feature/news/domain/repositories/news_list_repository.dart';

@singleton
class NewsListCase extends UseCase<List<NewsListEntity>, DefaultParams> {
  final NewsListRepository newsListRepository;

  NewsListCase({required this.newsListRepository});
  @override
  Future<Either<Failure, List<NewsListEntity>>> call(
      DefaultParams params) async {
    return await newsListRepository.getNewsList(
      params.pageNo ?? '',
      params.pageSize ?? 10,
      params.sortBy ?? '',
    );
  }
}
