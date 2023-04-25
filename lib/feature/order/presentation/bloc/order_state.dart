part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;
  const factory OrderState.noInternet() = NoInternetConnectionState;
  const factory OrderState.loading() = LoadingCreateOrderState;
  const factory OrderState.loaded({required OrderEntity orderEntity}) =
      LoadedCreateOrderState;
  const factory OrderState.error({required String message}) =
      ErrorCreateOrderState;
}
