import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/platform/network_info.dart';
import 'package:selim_trade_app/feature/order/domain/entities/order_entity.dart';

import '../../domain/usecases/order_case.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

@singleton
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderCase orderCase;
  final NetworkInfo networkInfo;
  OrderBloc({
    required this.orderCase,
    required this.networkInfo,
  }) : super(const _Initial()) {
    on<CreateOrderEvent>((event, emit) async {
      if (await networkInfo.isConnected == ConnectivityResult.mobile ||
          await networkInfo.isConnected == ConnectivityResult.wifi) {
        emit(const OrderState.loading());
        final result = await orderCase(OrderParams(
          name: event.name,
          phoneNumber: event.phoneNumber,
          message: event.message,
        ));

        result.fold(
          (failure) =>
              emit(OrderState.error(message: failure.serverException())),
          (order) => emit(OrderState.loaded(orderEntity: order)),
        );
      } else {
        emit(const OrderState.noInternet());
      }
    });
  }
}
