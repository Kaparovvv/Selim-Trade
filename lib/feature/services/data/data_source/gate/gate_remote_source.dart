import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/api_urls/api_urls.dart';
import 'package:selim_trade_app/core/services/api_requester.dart';
import 'package:selim_trade_app/feature/services/data/models/gate/gate_model.dart';
import 'package:selim_trade_app/utils/injection.dart';

import '../../../../../core/error/server_exception.dart';

abstract class GateRemoteDataSource {
  Future<GateModel> getGate(
    int gateId,
  );
}

@Singleton(as: GateRemoteDataSource)
class GateRemoteDataSourceImpl implements GateRemoteDataSource {
  @override
  Future<GateModel> getGate(int gateId) async {
    var requester = getIt<ApiClient>();
    Response response = await requester.toGet(ApiUrls.gateIdUrl(gateId));

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      log('Get Gate status code === ${response.statusCode}');
      GateModel gateModel = GateModel.fromJson(response.data);
      return gateModel;
    } else {
      int errorCode = response.statusCode!;
      throw ServerException.getErrorMessage(errorCode);
    }
  }
}
