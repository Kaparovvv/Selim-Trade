// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gates_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GatesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gateId) getGate,
    required TResult Function(int pageSize) getGateList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gateId)? getGate,
    TResult? Function(int pageSize)? getGateList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gateId)? getGate,
    TResult Function(int pageSize)? getGateList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGateEvent value) getGate,
    required TResult Function(GetGateListEvent value) getGateList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGateEvent value)? getGate,
    TResult? Function(GetGateListEvent value)? getGateList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGateEvent value)? getGate,
    TResult Function(GetGateListEvent value)? getGateList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GatesEventCopyWith<$Res> {
  factory $GatesEventCopyWith(
          GatesEvent value, $Res Function(GatesEvent) then) =
      _$GatesEventCopyWithImpl<$Res, GatesEvent>;
}

/// @nodoc
class _$GatesEventCopyWithImpl<$Res, $Val extends GatesEvent>
    implements $GatesEventCopyWith<$Res> {
  _$GatesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetGateEventCopyWith<$Res> {
  factory _$$GetGateEventCopyWith(
          _$GetGateEvent value, $Res Function(_$GetGateEvent) then) =
      __$$GetGateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int gateId});
}

/// @nodoc
class __$$GetGateEventCopyWithImpl<$Res>
    extends _$GatesEventCopyWithImpl<$Res, _$GetGateEvent>
    implements _$$GetGateEventCopyWith<$Res> {
  __$$GetGateEventCopyWithImpl(
      _$GetGateEvent _value, $Res Function(_$GetGateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gateId = null,
  }) {
    return _then(_$GetGateEvent(
      gateId: null == gateId
          ? _value.gateId
          : gateId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetGateEvent implements GetGateEvent {
  const _$GetGateEvent({required this.gateId});

  @override
  final int gateId;

  @override
  String toString() {
    return 'GatesEvent.getGate(gateId: $gateId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGateEvent &&
            (identical(other.gateId, gateId) || other.gateId == gateId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gateId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGateEventCopyWith<_$GetGateEvent> get copyWith =>
      __$$GetGateEventCopyWithImpl<_$GetGateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gateId) getGate,
    required TResult Function(int pageSize) getGateList,
  }) {
    return getGate(gateId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gateId)? getGate,
    TResult? Function(int pageSize)? getGateList,
  }) {
    return getGate?.call(gateId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gateId)? getGate,
    TResult Function(int pageSize)? getGateList,
    required TResult orElse(),
  }) {
    if (getGate != null) {
      return getGate(gateId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGateEvent value) getGate,
    required TResult Function(GetGateListEvent value) getGateList,
  }) {
    return getGate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGateEvent value)? getGate,
    TResult? Function(GetGateListEvent value)? getGateList,
  }) {
    return getGate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGateEvent value)? getGate,
    TResult Function(GetGateListEvent value)? getGateList,
    required TResult orElse(),
  }) {
    if (getGate != null) {
      return getGate(this);
    }
    return orElse();
  }
}

abstract class GetGateEvent implements GatesEvent {
  const factory GetGateEvent({required final int gateId}) = _$GetGateEvent;

  int get gateId;
  @JsonKey(ignore: true)
  _$$GetGateEventCopyWith<_$GetGateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetGateListEventCopyWith<$Res> {
  factory _$$GetGateListEventCopyWith(
          _$GetGateListEvent value, $Res Function(_$GetGateListEvent) then) =
      __$$GetGateListEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageSize});
}

/// @nodoc
class __$$GetGateListEventCopyWithImpl<$Res>
    extends _$GatesEventCopyWithImpl<$Res, _$GetGateListEvent>
    implements _$$GetGateListEventCopyWith<$Res> {
  __$$GetGateListEventCopyWithImpl(
      _$GetGateListEvent _value, $Res Function(_$GetGateListEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageSize = null,
  }) {
    return _then(_$GetGateListEvent(
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetGateListEvent implements GetGateListEvent {
  const _$GetGateListEvent({required this.pageSize});

  @override
  final int pageSize;

  @override
  String toString() {
    return 'GatesEvent.getGateList(pageSize: $pageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGateListEvent &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGateListEventCopyWith<_$GetGateListEvent> get copyWith =>
      __$$GetGateListEventCopyWithImpl<_$GetGateListEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int gateId) getGate,
    required TResult Function(int pageSize) getGateList,
  }) {
    return getGateList(pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int gateId)? getGate,
    TResult? Function(int pageSize)? getGateList,
  }) {
    return getGateList?.call(pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int gateId)? getGate,
    TResult Function(int pageSize)? getGateList,
    required TResult orElse(),
  }) {
    if (getGateList != null) {
      return getGateList(pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGateEvent value) getGate,
    required TResult Function(GetGateListEvent value) getGateList,
  }) {
    return getGateList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGateEvent value)? getGate,
    TResult? Function(GetGateListEvent value)? getGateList,
  }) {
    return getGateList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGateEvent value)? getGate,
    TResult Function(GetGateListEvent value)? getGateList,
    required TResult orElse(),
  }) {
    if (getGateList != null) {
      return getGateList(this);
    }
    return orElse();
  }
}

abstract class GetGateListEvent implements GatesEvent {
  const factory GetGateListEvent({required final int pageSize}) =
      _$GetGateListEvent;

  int get pageSize;
  @JsonKey(ignore: true)
  _$$GetGateListEventCopyWith<_$GetGateListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GatesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GateEntity gateEntity) loadedGate,
    required TResult Function(List<GatesListEntity> gateListEntity)
        loadedGateLlist,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GateEntity gateEntity)? loadedGate,
    TResult? Function(List<GatesListEntity> gateListEntity)? loadedGateLlist,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GateEntity gateEntity)? loadedGate,
    TResult Function(List<GatesListEntity> gateListEntity)? loadedGateLlist,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGateState value) loading,
    required TResult Function(LoadedGateState value) loadedGate,
    required TResult Function(LoadedGateListState value) loadedGateLlist,
    required TResult Function(ErrorGateState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGateState value)? loading,
    TResult? Function(LoadedGateState value)? loadedGate,
    TResult? Function(LoadedGateListState value)? loadedGateLlist,
    TResult? Function(ErrorGateState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGateState value)? loading,
    TResult Function(LoadedGateState value)? loadedGate,
    TResult Function(LoadedGateListState value)? loadedGateLlist,
    TResult Function(ErrorGateState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GatesStateCopyWith<$Res> {
  factory $GatesStateCopyWith(
          GatesState value, $Res Function(GatesState) then) =
      _$GatesStateCopyWithImpl<$Res, GatesState>;
}

/// @nodoc
class _$GatesStateCopyWithImpl<$Res, $Val extends GatesState>
    implements $GatesStateCopyWith<$Res> {
  _$GatesStateCopyWithImpl(this._value, this._then);

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
    extends _$GatesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'GatesState.initial()';
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
    required TResult Function() loading,
    required TResult Function(GateEntity gateEntity) loadedGate,
    required TResult Function(List<GatesListEntity> gateListEntity)
        loadedGateLlist,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GateEntity gateEntity)? loadedGate,
    TResult? Function(List<GatesListEntity> gateListEntity)? loadedGateLlist,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GateEntity gateEntity)? loadedGate,
    TResult Function(List<GatesListEntity> gateListEntity)? loadedGateLlist,
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
    required TResult Function(LoadingGateState value) loading,
    required TResult Function(LoadedGateState value) loadedGate,
    required TResult Function(LoadedGateListState value) loadedGateLlist,
    required TResult Function(ErrorGateState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGateState value)? loading,
    TResult? Function(LoadedGateState value)? loadedGate,
    TResult? Function(LoadedGateListState value)? loadedGateLlist,
    TResult? Function(ErrorGateState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGateState value)? loading,
    TResult Function(LoadedGateState value)? loadedGate,
    TResult Function(LoadedGateListState value)? loadedGateLlist,
    TResult Function(ErrorGateState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GatesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$LoadingGateStateCopyWith<$Res> {
  factory _$$LoadingGateStateCopyWith(
          _$LoadingGateState value, $Res Function(_$LoadingGateState) then) =
      __$$LoadingGateStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingGateStateCopyWithImpl<$Res>
    extends _$GatesStateCopyWithImpl<$Res, _$LoadingGateState>
    implements _$$LoadingGateStateCopyWith<$Res> {
  __$$LoadingGateStateCopyWithImpl(
      _$LoadingGateState _value, $Res Function(_$LoadingGateState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingGateState implements LoadingGateState {
  const _$LoadingGateState();

  @override
  String toString() {
    return 'GatesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingGateState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GateEntity gateEntity) loadedGate,
    required TResult Function(List<GatesListEntity> gateListEntity)
        loadedGateLlist,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GateEntity gateEntity)? loadedGate,
    TResult? Function(List<GatesListEntity> gateListEntity)? loadedGateLlist,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GateEntity gateEntity)? loadedGate,
    TResult Function(List<GatesListEntity> gateListEntity)? loadedGateLlist,
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
    required TResult Function(LoadingGateState value) loading,
    required TResult Function(LoadedGateState value) loadedGate,
    required TResult Function(LoadedGateListState value) loadedGateLlist,
    required TResult Function(ErrorGateState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGateState value)? loading,
    TResult? Function(LoadedGateState value)? loadedGate,
    TResult? Function(LoadedGateListState value)? loadedGateLlist,
    TResult? Function(ErrorGateState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGateState value)? loading,
    TResult Function(LoadedGateState value)? loadedGate,
    TResult Function(LoadedGateListState value)? loadedGateLlist,
    TResult Function(ErrorGateState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingGateState implements GatesState {
  const factory LoadingGateState() = _$LoadingGateState;
}

/// @nodoc
abstract class _$$LoadedGateStateCopyWith<$Res> {
  factory _$$LoadedGateStateCopyWith(
          _$LoadedGateState value, $Res Function(_$LoadedGateState) then) =
      __$$LoadedGateStateCopyWithImpl<$Res>;
  @useResult
  $Res call({GateEntity gateEntity});
}

/// @nodoc
class __$$LoadedGateStateCopyWithImpl<$Res>
    extends _$GatesStateCopyWithImpl<$Res, _$LoadedGateState>
    implements _$$LoadedGateStateCopyWith<$Res> {
  __$$LoadedGateStateCopyWithImpl(
      _$LoadedGateState _value, $Res Function(_$LoadedGateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gateEntity = null,
  }) {
    return _then(_$LoadedGateState(
      gateEntity: null == gateEntity
          ? _value.gateEntity
          : gateEntity // ignore: cast_nullable_to_non_nullable
              as GateEntity,
    ));
  }
}

/// @nodoc

class _$LoadedGateState implements LoadedGateState {
  const _$LoadedGateState({required this.gateEntity});

  @override
  final GateEntity gateEntity;

  @override
  String toString() {
    return 'GatesState.loadedGate(gateEntity: $gateEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedGateState &&
            (identical(other.gateEntity, gateEntity) ||
                other.gateEntity == gateEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gateEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedGateStateCopyWith<_$LoadedGateState> get copyWith =>
      __$$LoadedGateStateCopyWithImpl<_$LoadedGateState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GateEntity gateEntity) loadedGate,
    required TResult Function(List<GatesListEntity> gateListEntity)
        loadedGateLlist,
    required TResult Function(String message) error,
  }) {
    return loadedGate(gateEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GateEntity gateEntity)? loadedGate,
    TResult? Function(List<GatesListEntity> gateListEntity)? loadedGateLlist,
    TResult? Function(String message)? error,
  }) {
    return loadedGate?.call(gateEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GateEntity gateEntity)? loadedGate,
    TResult Function(List<GatesListEntity> gateListEntity)? loadedGateLlist,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedGate != null) {
      return loadedGate(gateEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGateState value) loading,
    required TResult Function(LoadedGateState value) loadedGate,
    required TResult Function(LoadedGateListState value) loadedGateLlist,
    required TResult Function(ErrorGateState value) error,
  }) {
    return loadedGate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGateState value)? loading,
    TResult? Function(LoadedGateState value)? loadedGate,
    TResult? Function(LoadedGateListState value)? loadedGateLlist,
    TResult? Function(ErrorGateState value)? error,
  }) {
    return loadedGate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGateState value)? loading,
    TResult Function(LoadedGateState value)? loadedGate,
    TResult Function(LoadedGateListState value)? loadedGateLlist,
    TResult Function(ErrorGateState value)? error,
    required TResult orElse(),
  }) {
    if (loadedGate != null) {
      return loadedGate(this);
    }
    return orElse();
  }
}

abstract class LoadedGateState implements GatesState {
  const factory LoadedGateState({required final GateEntity gateEntity}) =
      _$LoadedGateState;

  GateEntity get gateEntity;
  @JsonKey(ignore: true)
  _$$LoadedGateStateCopyWith<_$LoadedGateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedGateListStateCopyWith<$Res> {
  factory _$$LoadedGateListStateCopyWith(_$LoadedGateListState value,
          $Res Function(_$LoadedGateListState) then) =
      __$$LoadedGateListStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GatesListEntity> gateListEntity});
}

/// @nodoc
class __$$LoadedGateListStateCopyWithImpl<$Res>
    extends _$GatesStateCopyWithImpl<$Res, _$LoadedGateListState>
    implements _$$LoadedGateListStateCopyWith<$Res> {
  __$$LoadedGateListStateCopyWithImpl(
      _$LoadedGateListState _value, $Res Function(_$LoadedGateListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gateListEntity = null,
  }) {
    return _then(_$LoadedGateListState(
      gateListEntity: null == gateListEntity
          ? _value._gateListEntity
          : gateListEntity // ignore: cast_nullable_to_non_nullable
              as List<GatesListEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedGateListState implements LoadedGateListState {
  const _$LoadedGateListState(
      {required final List<GatesListEntity> gateListEntity})
      : _gateListEntity = gateListEntity;

  final List<GatesListEntity> _gateListEntity;
  @override
  List<GatesListEntity> get gateListEntity {
    if (_gateListEntity is EqualUnmodifiableListView) return _gateListEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gateListEntity);
  }

  @override
  String toString() {
    return 'GatesState.loadedGateLlist(gateListEntity: $gateListEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedGateListState &&
            const DeepCollectionEquality()
                .equals(other._gateListEntity, _gateListEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_gateListEntity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedGateListStateCopyWith<_$LoadedGateListState> get copyWith =>
      __$$LoadedGateListStateCopyWithImpl<_$LoadedGateListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GateEntity gateEntity) loadedGate,
    required TResult Function(List<GatesListEntity> gateListEntity)
        loadedGateLlist,
    required TResult Function(String message) error,
  }) {
    return loadedGateLlist(gateListEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GateEntity gateEntity)? loadedGate,
    TResult? Function(List<GatesListEntity> gateListEntity)? loadedGateLlist,
    TResult? Function(String message)? error,
  }) {
    return loadedGateLlist?.call(gateListEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GateEntity gateEntity)? loadedGate,
    TResult Function(List<GatesListEntity> gateListEntity)? loadedGateLlist,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedGateLlist != null) {
      return loadedGateLlist(gateListEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingGateState value) loading,
    required TResult Function(LoadedGateState value) loadedGate,
    required TResult Function(LoadedGateListState value) loadedGateLlist,
    required TResult Function(ErrorGateState value) error,
  }) {
    return loadedGateLlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGateState value)? loading,
    TResult? Function(LoadedGateState value)? loadedGate,
    TResult? Function(LoadedGateListState value)? loadedGateLlist,
    TResult? Function(ErrorGateState value)? error,
  }) {
    return loadedGateLlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGateState value)? loading,
    TResult Function(LoadedGateState value)? loadedGate,
    TResult Function(LoadedGateListState value)? loadedGateLlist,
    TResult Function(ErrorGateState value)? error,
    required TResult orElse(),
  }) {
    if (loadedGateLlist != null) {
      return loadedGateLlist(this);
    }
    return orElse();
  }
}

abstract class LoadedGateListState implements GatesState {
  const factory LoadedGateListState(
          {required final List<GatesListEntity> gateListEntity}) =
      _$LoadedGateListState;

  List<GatesListEntity> get gateListEntity;
  @JsonKey(ignore: true)
  _$$LoadedGateListStateCopyWith<_$LoadedGateListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorGateStateCopyWith<$Res> {
  factory _$$ErrorGateStateCopyWith(
          _$ErrorGateState value, $Res Function(_$ErrorGateState) then) =
      __$$ErrorGateStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorGateStateCopyWithImpl<$Res>
    extends _$GatesStateCopyWithImpl<$Res, _$ErrorGateState>
    implements _$$ErrorGateStateCopyWith<$Res> {
  __$$ErrorGateStateCopyWithImpl(
      _$ErrorGateState _value, $Res Function(_$ErrorGateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorGateState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorGateState implements ErrorGateState {
  const _$ErrorGateState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GatesState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorGateState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorGateStateCopyWith<_$ErrorGateState> get copyWith =>
      __$$ErrorGateStateCopyWithImpl<_$ErrorGateState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(GateEntity gateEntity) loadedGate,
    required TResult Function(List<GatesListEntity> gateListEntity)
        loadedGateLlist,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GateEntity gateEntity)? loadedGate,
    TResult? Function(List<GatesListEntity> gateListEntity)? loadedGateLlist,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GateEntity gateEntity)? loadedGate,
    TResult Function(List<GatesListEntity> gateListEntity)? loadedGateLlist,
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
    required TResult Function(LoadingGateState value) loading,
    required TResult Function(LoadedGateState value) loadedGate,
    required TResult Function(LoadedGateListState value) loadedGateLlist,
    required TResult Function(ErrorGateState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingGateState value)? loading,
    TResult? Function(LoadedGateState value)? loadedGate,
    TResult? Function(LoadedGateListState value)? loadedGateLlist,
    TResult? Function(ErrorGateState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingGateState value)? loading,
    TResult Function(LoadedGateState value)? loadedGate,
    TResult Function(LoadedGateListState value)? loadedGateLlist,
    TResult Function(ErrorGateState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorGateState implements GatesState {
  const factory ErrorGateState({required final String message}) =
      _$ErrorGateState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorGateStateCopyWith<_$ErrorGateState> get copyWith =>
      throw _privateConstructorUsedError;
}
