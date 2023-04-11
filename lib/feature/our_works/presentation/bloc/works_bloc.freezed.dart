// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'works_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WorksEvent {
  int get pageSize => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageSize) getWorksList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageSize)? getWorksList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageSize)? getWorksList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWorksListEvent value) getWorksList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWorksListEvent value)? getWorksList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWorksListEvent value)? getWorksList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorksEventCopyWith<WorksEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorksEventCopyWith<$Res> {
  factory $WorksEventCopyWith(
          WorksEvent value, $Res Function(WorksEvent) then) =
      _$WorksEventCopyWithImpl<$Res, WorksEvent>;
  @useResult
  $Res call({int pageSize});
}

/// @nodoc
class _$WorksEventCopyWithImpl<$Res, $Val extends WorksEvent>
    implements $WorksEventCopyWith<$Res> {
  _$WorksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetWorksListEventCopyWith<$Res>
    implements $WorksEventCopyWith<$Res> {
  factory _$$GetWorksListEventCopyWith(
          _$GetWorksListEvent value, $Res Function(_$GetWorksListEvent) then) =
      __$$GetWorksListEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageSize});
}

/// @nodoc
class __$$GetWorksListEventCopyWithImpl<$Res>
    extends _$WorksEventCopyWithImpl<$Res, _$GetWorksListEvent>
    implements _$$GetWorksListEventCopyWith<$Res> {
  __$$GetWorksListEventCopyWithImpl(
      _$GetWorksListEvent _value, $Res Function(_$GetWorksListEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageSize = null,
  }) {
    return _then(_$GetWorksListEvent(
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetWorksListEvent implements GetWorksListEvent {
  const _$GetWorksListEvent({required this.pageSize});

  @override
  final int pageSize;

  @override
  String toString() {
    return 'WorksEvent.getWorksList(pageSize: $pageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWorksListEvent &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWorksListEventCopyWith<_$GetWorksListEvent> get copyWith =>
      __$$GetWorksListEventCopyWithImpl<_$GetWorksListEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageSize) getWorksList,
  }) {
    return getWorksList(pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageSize)? getWorksList,
  }) {
    return getWorksList?.call(pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageSize)? getWorksList,
    required TResult orElse(),
  }) {
    if (getWorksList != null) {
      return getWorksList(pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetWorksListEvent value) getWorksList,
  }) {
    return getWorksList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetWorksListEvent value)? getWorksList,
  }) {
    return getWorksList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetWorksListEvent value)? getWorksList,
    required TResult orElse(),
  }) {
    if (getWorksList != null) {
      return getWorksList(this);
    }
    return orElse();
  }
}

abstract class GetWorksListEvent implements WorksEvent {
  const factory GetWorksListEvent({required final int pageSize}) =
      _$GetWorksListEvent;

  @override
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$$GetWorksListEventCopyWith<_$GetWorksListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WorksEntity> worksList) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WorksEntity> worksList)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WorksEntity> worksList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingWorksState value) loading,
    required TResult Function(LoadedWorksState value) loaded,
    required TResult Function(ErrorWorksState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingWorksState value)? loading,
    TResult? Function(LoadedWorksState value)? loaded,
    TResult? Function(ErrorWorksState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingWorksState value)? loading,
    TResult Function(LoadedWorksState value)? loaded,
    TResult Function(ErrorWorksState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorksStateCopyWith<$Res> {
  factory $WorksStateCopyWith(
          WorksState value, $Res Function(WorksState) then) =
      _$WorksStateCopyWithImpl<$Res, WorksState>;
}

/// @nodoc
class _$WorksStateCopyWithImpl<$Res, $Val extends WorksState>
    implements $WorksStateCopyWith<$Res> {
  _$WorksStateCopyWithImpl(this._value, this._then);

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
    extends _$WorksStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WorksState.initial()';
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
    required TResult Function(List<WorksEntity> worksList) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WorksEntity> worksList)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WorksEntity> worksList)? loaded,
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
    required TResult Function(LoadingWorksState value) loading,
    required TResult Function(LoadedWorksState value) loaded,
    required TResult Function(ErrorWorksState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingWorksState value)? loading,
    TResult? Function(LoadedWorksState value)? loaded,
    TResult? Function(ErrorWorksState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingWorksState value)? loading,
    TResult Function(LoadedWorksState value)? loaded,
    TResult Function(ErrorWorksState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WorksState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$LoadingWorksStateCopyWith<$Res> {
  factory _$$LoadingWorksStateCopyWith(
          _$LoadingWorksState value, $Res Function(_$LoadingWorksState) then) =
      __$$LoadingWorksStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingWorksStateCopyWithImpl<$Res>
    extends _$WorksStateCopyWithImpl<$Res, _$LoadingWorksState>
    implements _$$LoadingWorksStateCopyWith<$Res> {
  __$$LoadingWorksStateCopyWithImpl(
      _$LoadingWorksState _value, $Res Function(_$LoadingWorksState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingWorksState implements LoadingWorksState {
  const _$LoadingWorksState();

  @override
  String toString() {
    return 'WorksState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingWorksState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WorksEntity> worksList) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WorksEntity> worksList)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WorksEntity> worksList)? loaded,
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
    required TResult Function(LoadingWorksState value) loading,
    required TResult Function(LoadedWorksState value) loaded,
    required TResult Function(ErrorWorksState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingWorksState value)? loading,
    TResult? Function(LoadedWorksState value)? loaded,
    TResult? Function(ErrorWorksState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingWorksState value)? loading,
    TResult Function(LoadedWorksState value)? loaded,
    TResult Function(ErrorWorksState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingWorksState implements WorksState {
  const factory LoadingWorksState() = _$LoadingWorksState;
}

/// @nodoc
abstract class _$$LoadedWorksStateCopyWith<$Res> {
  factory _$$LoadedWorksStateCopyWith(
          _$LoadedWorksState value, $Res Function(_$LoadedWorksState) then) =
      __$$LoadedWorksStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<WorksEntity> worksList});
}

/// @nodoc
class __$$LoadedWorksStateCopyWithImpl<$Res>
    extends _$WorksStateCopyWithImpl<$Res, _$LoadedWorksState>
    implements _$$LoadedWorksStateCopyWith<$Res> {
  __$$LoadedWorksStateCopyWithImpl(
      _$LoadedWorksState _value, $Res Function(_$LoadedWorksState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? worksList = null,
  }) {
    return _then(_$LoadedWorksState(
      worksList: null == worksList
          ? _value._worksList
          : worksList // ignore: cast_nullable_to_non_nullable
              as List<WorksEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedWorksState implements LoadedWorksState {
  const _$LoadedWorksState({required final List<WorksEntity> worksList})
      : _worksList = worksList;

  final List<WorksEntity> _worksList;
  @override
  List<WorksEntity> get worksList {
    if (_worksList is EqualUnmodifiableListView) return _worksList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_worksList);
  }

  @override
  String toString() {
    return 'WorksState.loaded(worksList: $worksList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedWorksState &&
            const DeepCollectionEquality()
                .equals(other._worksList, _worksList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_worksList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedWorksStateCopyWith<_$LoadedWorksState> get copyWith =>
      __$$LoadedWorksStateCopyWithImpl<_$LoadedWorksState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WorksEntity> worksList) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(worksList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WorksEntity> worksList)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(worksList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WorksEntity> worksList)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(worksList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingWorksState value) loading,
    required TResult Function(LoadedWorksState value) loaded,
    required TResult Function(ErrorWorksState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingWorksState value)? loading,
    TResult? Function(LoadedWorksState value)? loaded,
    TResult? Function(ErrorWorksState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingWorksState value)? loading,
    TResult Function(LoadedWorksState value)? loaded,
    TResult Function(ErrorWorksState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedWorksState implements WorksState {
  const factory LoadedWorksState({required final List<WorksEntity> worksList}) =
      _$LoadedWorksState;

  List<WorksEntity> get worksList;
  @JsonKey(ignore: true)
  _$$LoadedWorksStateCopyWith<_$LoadedWorksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorWorksStateCopyWith<$Res> {
  factory _$$ErrorWorksStateCopyWith(
          _$ErrorWorksState value, $Res Function(_$ErrorWorksState) then) =
      __$$ErrorWorksStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorWorksStateCopyWithImpl<$Res>
    extends _$WorksStateCopyWithImpl<$Res, _$ErrorWorksState>
    implements _$$ErrorWorksStateCopyWith<$Res> {
  __$$ErrorWorksStateCopyWithImpl(
      _$ErrorWorksState _value, $Res Function(_$ErrorWorksState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorWorksState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorWorksState implements ErrorWorksState {
  const _$ErrorWorksState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'WorksState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorWorksState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorWorksStateCopyWith<_$ErrorWorksState> get copyWith =>
      __$$ErrorWorksStateCopyWithImpl<_$ErrorWorksState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<WorksEntity> worksList) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<WorksEntity> worksList)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<WorksEntity> worksList)? loaded,
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
    required TResult Function(LoadingWorksState value) loading,
    required TResult Function(LoadedWorksState value) loaded,
    required TResult Function(ErrorWorksState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingWorksState value)? loading,
    TResult? Function(LoadedWorksState value)? loaded,
    TResult? Function(ErrorWorksState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingWorksState value)? loading,
    TResult Function(LoadedWorksState value)? loaded,
    TResult Function(ErrorWorksState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorWorksState implements WorksState {
  const factory ErrorWorksState({required final String message}) =
      _$ErrorWorksState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorWorksStateCopyWith<_$ErrorWorksState> get copyWith =>
      throw _privateConstructorUsedError;
}
