// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/convert_models/models_convert.dart';

import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/feature/order/data/datasources/create_order_data_source.dart';
import 'package:selim_trade_app/feature/order/data/models/order_model.dart';
import 'package:selim_trade_app/feature/order/domain/entities/order_entity.dart';
import 'package:selim_trade_app/feature/order/domain/repositories/order_repository.dart';

import '../../../../core/error/server_exception.dart';

@Singleton(as: OrderRepository)
class OrderRepositoryExt extends OrderRepository {
  final CreateOrderDataSource dataSource;

  OrderRepositoryExt({required this.dataSource});

  @override
  Future<Either<Failure, OrderEntity>> createOrder(
    String name,
    String phoneNumber,
    String message,
  ) async {
    return await _createOrder(
      () => dataSource.createOrder(
        name,
        phoneNumber,
        message,
      ),
    );
  }

  Future<Either<Failure, OrderEntity>> _createOrder(
    Future<OrderModel> Function() createOrder,
  ) async {
    try {
      final responseOrder = await createOrder();
      return Right(orderModelToEntity(responseOrder));
    } on ServerException {
      return Left(ServerFailure(errorCode: 0));
    }
  }
}
