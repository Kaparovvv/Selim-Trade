import 'package:dartz/dartz.dart';
import 'package:selim_trade_app/core/error/failure.dart';
import 'package:selim_trade_app/feature/order/domain/entities/order_entity.dart';

abstract class OrderRepository {
  Future<Either<Failure, OrderEntity>> createOrder(
    String name,
    String phoneNumber,
    String message,
  );
}
