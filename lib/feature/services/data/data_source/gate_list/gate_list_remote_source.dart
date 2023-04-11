import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/services/api_requester.dart';
import 'package:selim_trade_app/feature/services/data/models/gates_list/gates_list_model.dart';

import '../../../../../core/api_urls/api_urls.dart';
import '../../../../../core/error/server_exception.dart';
import '../../../../../utils/injection.dart';

abstract class GateListRemoteDataSource {
  Future<List<GatesListModel>> getGateList(
    String pageNo,
    int pageSize,
    String sortBy,
  );
}

@Singleton(as: GateListRemoteDataSource)
class GateListRemoteDataSourceImpl implements GateListRemoteDataSource {
  @override
  Future<List<GatesListModel>> getGateList(
    String pageNo,
    int pageSize,
    String sortBy,
  ) async {
    var requester = getIt<ApiClient>();
    Response response = await requester.toGet(
      ApiUrls.gateListUrl(),
      queryParameters: {
        "pageNo": pageNo,
        "pageSize": pageSize,
        "sortBy": sortBy,
      },
    );
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      log('Get GateList status code === ${response.statusCode}');
      var gateList = response.data['content'];

      List<GatesListModel> gateListModel = gateList
          .map<GatesListModel>((gateList) => GatesListModel.fromJson(gateList))
          .toList();

      return gateListModel;
    } else {
      int errorCode = response.statusCode!;
      throw ServerException.getErrorMessage(errorCode);
    }
  }
}
