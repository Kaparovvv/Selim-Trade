// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsEvent {
  int get pageSize => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageSize) getNewsListEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageSize)? getNewsListEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageSize)? getNewsListEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNewsListEvent value) getNewsListEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNewsListEvent value)? getNewsListEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNewsListEvent value)? getNewsListEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsEventCopyWith<NewsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
  @useResult
  $Res call({int pageSize});
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

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
abstract class _$$GetNewsListEventCopyWith<$Res>
    implements $NewsEventCopyWith<$Res> {
  factory _$$GetNewsListEventCopyWith(
          _$GetNewsListEvent value, $Res Function(_$GetNewsListEvent) then) =
      __$$GetNewsListEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageSize});
}

/// @nodoc
class __$$GetNewsListEventCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$GetNewsListEvent>
    implements _$$GetNewsListEventCopyWith<$Res> {
  __$$GetNewsListEventCopyWithImpl(
      _$GetNewsListEvent _value, $Res Function(_$GetNewsListEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageSize = null,
  }) {
    return _then(_$GetNewsListEvent(
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetNewsListEvent implements GetNewsListEvent {
  const _$GetNewsListEvent({required this.pageSize});

  @override
  final int pageSize;

  @override
  String toString() {
    return 'NewsEvent.getNewsListEvent(pageSize: $pageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNewsListEvent &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNewsListEventCopyWith<_$GetNewsListEvent> get copyWith =>
      __$$GetNewsListEventCopyWithImpl<_$GetNewsListEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageSize) getNewsListEvent,
  }) {
    return getNewsListEvent(pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageSize)? getNewsListEvent,
  }) {
    return getNewsListEvent?.call(pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageSize)? getNewsListEvent,
    required TResult orElse(),
  }) {
    if (getNewsListEvent != null) {
      return getNewsListEvent(pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNewsListEvent value) getNewsListEvent,
  }) {
    return getNewsListEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNewsListEvent value)? getNewsListEvent,
  }) {
    return getNewsListEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNewsListEvent value)? getNewsListEvent,
    required TResult orElse(),
  }) {
    if (getNewsListEvent != null) {
      return getNewsListEvent(this);
    }
    return orElse();
  }
}

abstract class GetNewsListEvent implements NewsEvent {
  const factory GetNewsListEvent({required final int pageSize}) =
      _$GetNewsListEvent;

  @override
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$$GetNewsListEventCopyWith<_$GetNewsListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsEntity> newsListEntity) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsEntity> newsListEntity)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsEntity> newsListEntity)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingNewsListState value) loading,
    required TResult Function(LoadedNewsListState value) loaded,
    required TResult Function(ErrorNewsListState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNewsListState value)? loading,
    TResult? Function(LoadedNewsListState value)? loaded,
    TResult? Function(ErrorNewsListState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNewsListState value)? loading,
    TResult Function(LoadedNewsListState value)? loaded,
    TResult Function(ErrorNewsListState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

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
    extends _$NewsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NewsState.initial()';
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
    required TResult Function(List<NewsEntity> newsListEntity) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsEntity> newsListEntity)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsEntity> newsListEntity)? loaded,
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
    required TResult Function(LoadingNewsListState value) loading,
    required TResult Function(LoadedNewsListState value) loaded,
    required TResult Function(ErrorNewsListState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNewsListState value)? loading,
    TResult? Function(LoadedNewsListState value)? loaded,
    TResult? Function(ErrorNewsListState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNewsListState value)? loading,
    TResult Function(LoadedNewsListState value)? loaded,
    TResult Function(ErrorNewsListState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NewsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$LoadingNewsListStateCopyWith<$Res> {
  factory _$$LoadingNewsListStateCopyWith(_$LoadingNewsListState value,
          $Res Function(_$LoadingNewsListState) then) =
      __$$LoadingNewsListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingNewsListStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$LoadingNewsListState>
    implements _$$LoadingNewsListStateCopyWith<$Res> {
  __$$LoadingNewsListStateCopyWithImpl(_$LoadingNewsListState _value,
      $Res Function(_$LoadingNewsListState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingNewsListState implements LoadingNewsListState {
  const _$LoadingNewsListState();

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingNewsListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsEntity> newsListEntity) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsEntity> newsListEntity)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsEntity> newsListEntity)? loaded,
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
    required TResult Function(LoadingNewsListState value) loading,
    required TResult Function(LoadedNewsListState value) loaded,
    required TResult Function(ErrorNewsListState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNewsListState value)? loading,
    TResult? Function(LoadedNewsListState value)? loaded,
    TResult? Function(ErrorNewsListState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNewsListState value)? loading,
    TResult Function(LoadedNewsListState value)? loaded,
    TResult Function(ErrorNewsListState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingNewsListState implements NewsState {
  const factory LoadingNewsListState() = _$LoadingNewsListState;
}

/// @nodoc
abstract class _$$LoadedNewsListStateCopyWith<$Res> {
  factory _$$LoadedNewsListStateCopyWith(_$LoadedNewsListState value,
          $Res Function(_$LoadedNewsListState) then) =
      __$$LoadedNewsListStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NewsEntity> newsListEntity});
}

/// @nodoc
class __$$LoadedNewsListStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$LoadedNewsListState>
    implements _$$LoadedNewsListStateCopyWith<$Res> {
  __$$LoadedNewsListStateCopyWithImpl(
      _$LoadedNewsListState _value, $Res Function(_$LoadedNewsListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsListEntity = null,
  }) {
    return _then(_$LoadedNewsListState(
      newsListEntity: null == newsListEntity
          ? _value._newsListEntity
          : newsListEntity // ignore: cast_nullable_to_non_nullable
              as List<NewsEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedNewsListState implements LoadedNewsListState {
  const _$LoadedNewsListState({required final List<NewsEntity> newsListEntity})
      : _newsListEntity = newsListEntity;

  final List<NewsEntity> _newsListEntity;
  @override
  List<NewsEntity> get newsListEntity {
    if (_newsListEntity is EqualUnmodifiableListView) return _newsListEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newsListEntity);
  }

  @override
  String toString() {
    return 'NewsState.loaded(newsListEntity: $newsListEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedNewsListState &&
            const DeepCollectionEquality()
                .equals(other._newsListEntity, _newsListEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_newsListEntity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedNewsListStateCopyWith<_$LoadedNewsListState> get copyWith =>
      __$$LoadedNewsListStateCopyWithImpl<_$LoadedNewsListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsEntity> newsListEntity) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(newsListEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsEntity> newsListEntity)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(newsListEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsEntity> newsListEntity)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(newsListEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingNewsListState value) loading,
    required TResult Function(LoadedNewsListState value) loaded,
    required TResult Function(ErrorNewsListState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNewsListState value)? loading,
    TResult? Function(LoadedNewsListState value)? loaded,
    TResult? Function(ErrorNewsListState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNewsListState value)? loading,
    TResult Function(LoadedNewsListState value)? loaded,
    TResult Function(ErrorNewsListState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedNewsListState implements NewsState {
  const factory LoadedNewsListState(
      {required final List<NewsEntity> newsListEntity}) = _$LoadedNewsListState;

  List<NewsEntity> get newsListEntity;
  @JsonKey(ignore: true)
  _$$LoadedNewsListStateCopyWith<_$LoadedNewsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorNewsListStateCopyWith<$Res> {
  factory _$$ErrorNewsListStateCopyWith(_$ErrorNewsListState value,
          $Res Function(_$ErrorNewsListState) then) =
      __$$ErrorNewsListStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorNewsListStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$ErrorNewsListState>
    implements _$$ErrorNewsListStateCopyWith<$Res> {
  __$$ErrorNewsListStateCopyWithImpl(
      _$ErrorNewsListState _value, $Res Function(_$ErrorNewsListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorNewsListState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorNewsListState implements ErrorNewsListState {
  const _$ErrorNewsListState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'NewsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorNewsListState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorNewsListStateCopyWith<_$ErrorNewsListState> get copyWith =>
      __$$ErrorNewsListStateCopyWithImpl<_$ErrorNewsListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsEntity> newsListEntity) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsEntity> newsListEntity)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsEntity> newsListEntity)? loaded,
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
    required TResult Function(LoadingNewsListState value) loading,
    required TResult Function(LoadedNewsListState value) loaded,
    required TResult Function(ErrorNewsListState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNewsListState value)? loading,
    TResult? Function(LoadedNewsListState value)? loaded,
    TResult? Function(ErrorNewsListState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNewsListState value)? loading,
    TResult Function(LoadedNewsListState value)? loaded,
    TResult Function(ErrorNewsListState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorNewsListState implements NewsState {
  const factory ErrorNewsListState({required final String message}) =
      _$ErrorNewsListState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorNewsListStateCopyWith<_$ErrorNewsListState> get copyWith =>
      throw _privateConstructorUsedError;
}
