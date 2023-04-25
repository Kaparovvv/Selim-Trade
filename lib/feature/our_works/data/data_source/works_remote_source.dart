import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/api_urls/api_urls.dart';
import 'package:selim_trade_app/feature/our_works/data/models/works_model.dart';

import '../../../../core/error/server_exception.dart';
import '../../../../core/services/api_requester.dart';
import '../../../../utils/injection.dart';

abstract class WorksRemoteDataSource {
  Future<List<WorksModel>> getWorksList(
    String pageNo,
    int pageSize,
    String sortBy,
  );
}

@Singleton(as: WorksRemoteDataSource)
class WorksRemoteDataSourceImpl implements WorksRemoteDataSource {
  @override
  Future<List<WorksModel>> getWorksList(
    String pageNo,
    int pageSize,
    String sortBy,
  ) async {
    var requester = getIt<ApiClient>();
    Response response = await requester.toGet(
      ApiUrls.worksListUrl(),
      queryParameters: {
        "pageNo": pageNo,
        "pageSize": pageSize,
        "sortBy": sortBy,
      },
    );

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      log('Get Works status code === ${response.statusCode}');
      var worksList = response.data['content'];
      List<WorksModel> worksListModel = worksList
          .map<WorksModel>((works) => WorksModel.fromJson(works))
          .toList();
      return worksListModel;
    } else {
      int errorCode = response.statusCode!;
      throw ServerException.getErrorMessage(errorCode);
    }
  }
}
