// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderEvent {
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phoneNumber, String message)
        createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String phoneNumber, String message)?
        createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phoneNumber, String message)?
        createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrderEvent value) createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateOrderEvent value)? createOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrderEvent value)? createOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderEventCopyWith<OrderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
  @useResult
  $Res call({String name, String phoneNumber, String message});
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateOrderEventCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$$CreateOrderEventCopyWith(
          _$CreateOrderEvent value, $Res Function(_$CreateOrderEvent) then) =
      __$$CreateOrderEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String phoneNumber, String message});
}

/// @nodoc
class __$$CreateOrderEventCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$CreateOrderEvent>
    implements _$$CreateOrderEventCopyWith<$Res> {
  __$$CreateOrderEventCopyWithImpl(
      _$CreateOrderEvent _value, $Res Function(_$CreateOrderEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? message = null,
  }) {
    return _then(_$CreateOrderEvent(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateOrderEvent implements CreateOrderEvent {
  const _$CreateOrderEvent(
      {required this.name, required this.phoneNumber, required this.message});

  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String message;

  @override
  String toString() {
    return 'OrderEvent.createOrder(name: $name, phoneNumber: $phoneNumber, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderEvent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phoneNumber, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderEventCopyWith<_$CreateOrderEvent> get copyWith =>
      __$$CreateOrderEventCopyWithImpl<_$CreateOrderEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String phoneNumber, String message)
        createOrder,
  }) {
    return createOrder(name, phoneNumber, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String phoneNumber, String message)?
        createOrder,
  }) {
    return createOrder?.call(name, phoneNumber, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String phoneNumber, String message)?
        createOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(name, phoneNumber, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateOrderEvent value) createOrder,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateOrderEvent value)? createOrder,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateOrderEvent value)? createOrder,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class CreateOrderEvent implements OrderEvent {
  const factory CreateOrderEvent(
      {required final String name,
      required final String phoneNumber,
      required final String message}) = _$CreateOrderEvent;

  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CreateOrderEventCopyWith<_$CreateOrderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noInternet,
    required TResult Function() loading,
    required TResult Function(OrderEntity orderEntity) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternet,
    TResult? Function()? loading,
    TResult? Function(OrderEntity orderEntity)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternet,
    TResult Function()? loading,
    TResult Function(OrderEntity orderEntity)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(NoInternetConnectionState value) noInternet,
    required TResult Function(LoadingCreateOrderState value) loading,
    required TResult Function(LoadedCreateOrderState value) loaded,
    required TResult Function(ErrorCreateOrderState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(NoInternetConnectionState value)? noInternet,
    TResult? Function(LoadingCreateOrderState value)? loading,
    TResult? Function(LoadedCreateOrderState value)? loaded,
    TResult? Function(ErrorCreateOrderState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(NoInternetConnectionState value)? noInternet,
    TResult Function(LoadingCreateOrderState value)? loading,
    TResult Function(LoadedCreateOrderState value)? loaded,
    TResult Function(ErrorCreateOrderState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OrderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noInternet,
    required TResult Function() loading,
    required TResult Function(OrderEntity orderEntity) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternet,
    TResult? Function()? loading,
    TResult? Function(OrderEntity orderEntity)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternet,
    TResult Function()? loading,
    TResult Function(OrderEntity orderEntity)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(NoInternetConnectionState value) noInternet,
    required TResult Function(LoadingCreateOrderState value) loading,
    required TResult Function(LoadedCreateOrderState value) loaded,
    required TResult Function(ErrorCreateOrderState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(NoInternetConnectionState value)? noInternet,
    TResult? Function(LoadingCreateOrderState value)? loading,
    TResult? Function(LoadedCreateOrderState value)? loaded,
    TResult? Function(ErrorCreateOrderState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(NoInternetConnectionState value)? noInternet,
    TResult Function(LoadingCreateOrderState value)? loading,
    TResult Function(LoadedCreateOrderState value)? loaded,
    TResult Function(ErrorCreateOrderState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$NoInternetConnectionStateCopyWith<$Res> {
  factory _$$NoInternetConnectionStateCopyWith(
          _$NoInternetConnectionState value,
          $Res Function(_$NoInternetConnectionState) then) =
      __$$NoInternetConnectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternetConnectionStateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$NoInternetConnectionState>
    implements _$$NoInternetConnectionStateCopyWith<$Res> {
  __$$NoInternetConnectionStateCopyWithImpl(_$NoInternetConnectionState _value,
      $Res Function(_$NoInternetConnectionState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoInternetConnectionState implements NoInternetConnectionState {
  const _$NoInternetConnectionState();

  @override
  String toString() {
    return 'OrderState.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetConnectionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noInternet,
    required TResult Function() loading,
    required TResult Function(OrderEntity orderEntity) loaded,
    required TResult Function(String message) error,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternet,
    TResult? Function()? loading,
    TResult? Function(OrderEntity orderEntity)? loaded,
    TResult? Function(String message)? error,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternet,
    TResult Function()? loading,
    TResult Function(OrderEntity orderEntity)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(NoInternetConnectionState value) noInternet,
    required TResult Function(LoadingCreateOrderState value) loading,
    required TResult Function(LoadedCreateOrderState value) loaded,
    required TResult Function(ErrorCreateOrderState value) error,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(NoInternetConnectionState value)? noInternet,
    TResult? Function(LoadingCreateOrderState value)? loading,
    TResult? Function(LoadedCreateOrderState value)? loaded,
    TResult? Function(ErrorCreateOrderState value)? error,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(NoInternetConnectionState value)? noInternet,
    TResult Function(LoadingCreateOrderState value)? loading,
    TResult Function(LoadedCreateOrderState value)? loaded,
    TResult Function(ErrorCreateOrderState value)? error,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnectionState implements OrderState {
  const factory NoInternetConnectionState() = _$NoInternetConnectionState;
}

/// @nodoc
abstract class _$$LoadingCreateOrderStateCopyWith<$Res> {
  factory _$$LoadingCreateOrderStateCopyWith(_$LoadingCreateOrderState value,
          $Res Function(_$LoadingCreateOrderState) then) =
      __$$LoadingCreateOrderStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCreateOrderStateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$LoadingCreateOrderState>
    implements _$$LoadingCreateOrderStateCopyWith<$Res> {
  __$$LoadingCreateOrderStateCopyWithImpl(_$LoadingCreateOrderState _value,
      $Res Function(_$LoadingCreateOrderState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingCreateOrderState implements LoadingCreateOrderState {
  const _$LoadingCreateOrderState();

  @override
  String toString() {
    return 'OrderState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingCreateOrderState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noInternet,
    required TResult Function() loading,
    required TResult Function(OrderEntity orderEntity) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternet,
    TResult? Function()? loading,
    TResult? Function(OrderEntity orderEntity)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternet,
    TResult Function()? loading,
    TResult Function(OrderEntity orderEntity)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(NoInternetConnectionState value) noInternet,
    required TResult Function(LoadingCreateOrderState value) loading,
    required TResult Function(LoadedCreateOrderState value) loaded,
    required TResult Function(ErrorCreateOrderState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(NoInternetConnectionState value)? noInternet,
    TResult? Function(LoadingCreateOrderState value)? loading,
    TResult? Function(LoadedCreateOrderState value)? loaded,
    TResult? Function(ErrorCreateOrderState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(NoInternetConnectionState value)? noInternet,
    TResult Function(LoadingCreateOrderState value)? loading,
    TResult Function(LoadedCreateOrderState value)? loaded,
    TResult Function(ErrorCreateOrderState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingCreateOrderState implements OrderState {
  const factory LoadingCreateOrderState() = _$LoadingCreateOrderState;
}

/// @nodoc
abstract class _$$LoadedCreateOrderStateCopyWith<$Res> {
  factory _$$LoadedCreateOrderStateCopyWith(_$LoadedCreateOrderState value,
          $Res Function(_$LoadedCreateOrderState) then) =
      __$$LoadedCreateOrderStateCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderEntity orderEntity});
}

/// @nodoc
class __$$LoadedCreateOrderStateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$LoadedCreateOrderState>
    implements _$$LoadedCreateOrderStateCopyWith<$Res> {
  __$$LoadedCreateOrderStateCopyWithImpl(_$LoadedCreateOrderState _value,
      $Res Function(_$LoadedCreateOrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderEntity = null,
  }) {
    return _then(_$LoadedCreateOrderState(
      orderEntity: null == orderEntity
          ? _value.orderEntity
          : orderEntity // ignore: cast_nullable_to_non_nullable
              as OrderEntity,
    ));
  }
}

/// @nodoc

class _$LoadedCreateOrderState implements LoadedCreateOrderState {
  const _$LoadedCreateOrderState({required this.orderEntity});

  @override
  final OrderEntity orderEntity;

  @override
  String toString() {
    return 'OrderState.loaded(orderEntity: $orderEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedCreateOrderState &&
            (identical(other.orderEntity, orderEntity) ||
                other.orderEntity == orderEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCreateOrderStateCopyWith<_$LoadedCreateOrderState> get copyWith =>
      __$$LoadedCreateOrderStateCopyWithImpl<_$LoadedCreateOrderState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noInternet,
    required TResult Function() loading,
    required TResult Function(OrderEntity orderEntity) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(orderEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternet,
    TResult? Function()? loading,
    TResult? Function(OrderEntity orderEntity)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(orderEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternet,
    TResult Function()? loading,
    TResult Function(OrderEntity orderEntity)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(orderEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(NoInternetConnectionState value) noInternet,
    required TResult Function(LoadingCreateOrderState value) loading,
    required TResult Function(LoadedCreateOrderState value) loaded,
    required TResult Function(ErrorCreateOrderState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(NoInternetConnectionState value)? noInternet,
    TResult? Function(LoadingCreateOrderState value)? loading,
    TResult? Function(LoadedCreateOrderState value)? loaded,
    TResult? Function(ErrorCreateOrderState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(NoInternetConnectionState value)? noInternet,
    TResult Function(LoadingCreateOrderState value)? loading,
    TResult Function(LoadedCreateOrderState value)? loaded,
    TResult Function(ErrorCreateOrderState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedCreateOrderState implements OrderState {
  const factory LoadedCreateOrderState(
      {required final OrderEntity orderEntity}) = _$LoadedCreateOrderState;

  OrderEntity get orderEntity;
  @JsonKey(ignore: true)
  _$$LoadedCreateOrderStateCopyWith<_$LoadedCreateOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCreateOrderStateCopyWith<$Res> {
  factory _$$ErrorCreateOrderStateCopyWith(_$ErrorCreateOrderState value,
          $Res Function(_$ErrorCreateOrderState) then) =
      __$$ErrorCreateOrderStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCreateOrderStateCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$ErrorCreateOrderState>
    implements _$$ErrorCreateOrderStateCopyWith<$Res> {
  __$$ErrorCreateOrderStateCopyWithImpl(_$ErrorCreateOrderState _value,
      $Res Function(_$ErrorCreateOrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorCreateOrderState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorCreateOrderState implements ErrorCreateOrderState {
  const _$ErrorCreateOrderState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'OrderState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorCreateOrderState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCreateOrderStateCopyWith<_$ErrorCreateOrderState> get copyWith =>
      __$$ErrorCreateOrderStateCopyWithImpl<_$ErrorCreateOrderState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() noInternet,
    required TResult Function() loading,
    required TResult Function(OrderEntity orderEntity) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? noInternet,
    TResult? Function()? loading,
    TResult? Function(OrderEntity orderEntity)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? noInternet,
    TResult Function()? loading,
    TResult Function(OrderEntity orderEntity)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(NoInternetConnectionState value) noInternet,
    required TResult Function(LoadingCreateOrderState value) loading,
    required TResult Function(LoadedCreateOrderState value) loaded,
    required TResult Function(ErrorCreateOrderState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(NoInternetConnectionState value)? noInternet,
    TResult? Function(LoadingCreateOrderState value)? loading,
    TResult? Function(LoadedCreateOrderState value)? loaded,
    TResult? Function(ErrorCreateOrderState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(NoInternetConnectionState value)? noInternet,
    TResult Function(LoadingCreateOrderState value)? loading,
    TResult Function(LoadedCreateOrderState value)? loaded,
    TResult Function(ErrorCreateOrderState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorCreateOrderState implements OrderState {
  const factory ErrorCreateOrderState({required final String message}) =
      _$ErrorCreateOrderState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorCreateOrderStateCopyWith<_$ErrorCreateOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
