import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/feature/order/domain/entities/order_entity.dart';
import 'package:selim_trade_app/feature/order/domain/repositories/order_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecases.dart';

@singleton
class OrderCase extends UseCase<OrderEntity, OrderParams> {
  final OrderRepository orderRepository;

  OrderCase({required this.orderRepository});

  @override
  Future<Either<Failure, OrderEntity>> call(OrderParams params) async {
    return await orderRepository.createOrder(
      params.name,
      params.phoneNumber,
      params.message,
    );
  }
}

class OrderParams extends Equatable {
  final String name;
  final String phoneNumber;
  final String message;

  const OrderParams({
    required this.name,
    required this.phoneNumber,
    required this.message,
  });

  @override
  List<Object?> get props => [name, phoneNumber, message];
}
