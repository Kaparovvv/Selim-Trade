import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/api_urls/api_urls.dart';
import 'package:selim_trade_app/core/services/api_requester.dart';
import 'package:selim_trade_app/feature/order/data/models/order_model.dart';
import 'package:selim_trade_app/utils/injection.dart';

import '../../../../core/error/server_exception.dart';

abstract class CreateOrderDataSource {
  Future<OrderModel> createOrder(
    String name,
    String phoneNumber,
    String message,
  );
}

@Singleton(as: CreateOrderDataSource)
class CreateOrderDataSourceImpl implements CreateOrderDataSource {
  @override
  Future<OrderModel> createOrder(
    String name,
    String phoneNumber,
    String message,
  ) async {
    var requester = getIt<ApiClient>();
    Response response = await requester.toPost(ApiUrls.newOrder(), body: {
      "name": name,
      "phoneNumber": phoneNumber,
      "message": message,
    });
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      log('Get New Order status code === ${response.statusCode}');
      OrderModel newsModel = OrderModel.fromJson(response.data);
      return newsModel;
    } else {
      int errorCode = response.statusCode!;
      throw ServerException.getErrorMessage(errorCode);
    }
  }
}
