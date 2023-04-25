part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.createOrder({
    required String name,
    required String phoneNumber,
    required String message,
  }) = CreateOrderEvent;
}
