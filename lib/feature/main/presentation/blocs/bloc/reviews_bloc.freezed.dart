// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reviews_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReviewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReviewsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReviewsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReviewsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetReviewsListEvent value) getReviewsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetReviewsListEvent value)? getReviewsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetReviewsListEvent value)? getReviewsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsEventCopyWith<$Res> {
  factory $ReviewsEventCopyWith(
          ReviewsEvent value, $Res Function(ReviewsEvent) then) =
      _$ReviewsEventCopyWithImpl<$Res, ReviewsEvent>;
}

/// @nodoc
class _$ReviewsEventCopyWithImpl<$Res, $Val extends ReviewsEvent>
    implements $ReviewsEventCopyWith<$Res> {
  _$ReviewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetReviewsListEventCopyWith<$Res> {
  factory _$$GetReviewsListEventCopyWith(_$GetReviewsListEvent value,
          $Res Function(_$GetReviewsListEvent) then) =
      __$$GetReviewsListEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetReviewsListEventCopyWithImpl<$Res>
    extends _$ReviewsEventCopyWithImpl<$Res, _$GetReviewsListEvent>
    implements _$$GetReviewsListEventCopyWith<$Res> {
  __$$GetReviewsListEventCopyWithImpl(
      _$GetReviewsListEvent _value, $Res Function(_$GetReviewsListEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetReviewsListEvent implements GetReviewsListEvent {
  const _$GetReviewsListEvent();

  @override
  String toString() {
    return 'ReviewsEvent.getReviewsList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetReviewsListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getReviewsList,
  }) {
    return getReviewsList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getReviewsList,
  }) {
    return getReviewsList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getReviewsList,
    required TResult orElse(),
  }) {
    if (getReviewsList != null) {
      return getReviewsList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetReviewsListEvent value) getReviewsList,
  }) {
    return getReviewsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetReviewsListEvent value)? getReviewsList,
  }) {
    return getReviewsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetReviewsListEvent value)? getReviewsList,
    required TResult orElse(),
  }) {
    if (getReviewsList != null) {
      return getReviewsList(this);
    }
    return orElse();
  }
}

abstract class GetReviewsListEvent implements ReviewsEvent {
  const factory GetReviewsListEvent() = _$GetReviewsListEvent;
}

/// @nodoc
mixin _$ReviewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ReviewsEntity> reviewsListEntity) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ReviewsEntity> reviewsListEntity)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ReviewsEntity> reviewsListEntity)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingReviewsListState value) loading,
    required TResult Function(LoadedReviewsListState value) loaded,
    required TResult Function(ErrorReviewsListState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingReviewsListState value)? loading,
    TResult? Function(LoadedReviewsListState value)? loaded,
    TResult? Function(ErrorReviewsListState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingReviewsListState value)? loading,
    TResult Function(LoadedReviewsListState value)? loaded,
    TResult Function(ErrorReviewsListState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsStateCopyWith<$Res> {
  factory $ReviewsStateCopyWith(
          ReviewsState value, $Res Function(ReviewsState) then) =
      _$ReviewsStateCopyWithImpl<$Res, ReviewsState>;
}

/// @nodoc
class _$ReviewsStateCopyWithImpl<$Res, $Val extends ReviewsState>
    implements $ReviewsStateCopyWith<$Res> {
  _$ReviewsStateCopyWithImpl(this._value, this._then);

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
    extends _$ReviewsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ReviewsState.initial()';
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
    required TResult Function(List<ReviewsEntity> reviewsListEntity) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ReviewsEntity> reviewsListEntity)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ReviewsEntity> reviewsListEntity)? loaded,
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
    required TResult Function(LoadingReviewsListState value) loading,
    required TResult Function(LoadedReviewsListState value) loaded,
    required TResult Function(ErrorReviewsListState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingReviewsListState value)? loading,
    TResult? Function(LoadedReviewsListState value)? loaded,
    TResult? Function(ErrorReviewsListState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingReviewsListState value)? loading,
    TResult Function(LoadedReviewsListState value)? loaded,
    TResult Function(ErrorReviewsListState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReviewsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$LoadingReviewsListStateCopyWith<$Res> {
  factory _$$LoadingReviewsListStateCopyWith(_$LoadingReviewsListState value,
          $Res Function(_$LoadingReviewsListState) then) =
      __$$LoadingReviewsListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingReviewsListStateCopyWithImpl<$Res>
    extends _$ReviewsStateCopyWithImpl<$Res, _$LoadingReviewsListState>
    implements _$$LoadingReviewsListStateCopyWith<$Res> {
  __$$LoadingReviewsListStateCopyWithImpl(_$LoadingReviewsListState _value,
      $Res Function(_$LoadingReviewsListState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingReviewsListState implements LoadingReviewsListState {
  const _$LoadingReviewsListState();

  @override
  String toString() {
    return 'ReviewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingReviewsListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ReviewsEntity> reviewsListEntity) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ReviewsEntity> reviewsListEntity)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ReviewsEntity> reviewsListEntity)? loaded,
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
    required TResult Function(LoadingReviewsListState value) loading,
    required TResult Function(LoadedReviewsListState value) loaded,
    required TResult Function(ErrorReviewsListState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingReviewsListState value)? loading,
    TResult? Function(LoadedReviewsListState value)? loaded,
    TResult? Function(ErrorReviewsListState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingReviewsListState value)? loading,
    TResult Function(LoadedReviewsListState value)? loaded,
    TResult Function(ErrorReviewsListState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingReviewsListState implements ReviewsState {
  const factory LoadingReviewsListState() = _$LoadingReviewsListState;
}

/// @nodoc
abstract class _$$LoadedReviewsListStateCopyWith<$Res> {
  factory _$$LoadedReviewsListStateCopyWith(_$LoadedReviewsListState value,
          $Res Function(_$LoadedReviewsListState) then) =
      __$$LoadedReviewsListStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ReviewsEntity> reviewsListEntity});
}

/// @nodoc
class __$$LoadedReviewsListStateCopyWithImpl<$Res>
    extends _$ReviewsStateCopyWithImpl<$Res, _$LoadedReviewsListState>
    implements _$$LoadedReviewsListStateCopyWith<$Res> {
  __$$LoadedReviewsListStateCopyWithImpl(_$LoadedReviewsListState _value,
      $Res Function(_$LoadedReviewsListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewsListEntity = null,
  }) {
    return _then(_$LoadedReviewsListState(
      reviewsListEntity: null == reviewsListEntity
          ? _value._reviewsListEntity
          : reviewsListEntity // ignore: cast_nullable_to_non_nullable
              as List<ReviewsEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedReviewsListState implements LoadedReviewsListState {
  const _$LoadedReviewsListState(
      {required final List<ReviewsEntity> reviewsListEntity})
      : _reviewsListEntity = reviewsListEntity;

  final List<ReviewsEntity> _reviewsListEntity;
  @override
  List<ReviewsEntity> get reviewsListEntity {
    if (_reviewsListEntity is EqualUnmodifiableListView)
      return _reviewsListEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviewsListEntity);
  }

  @override
  String toString() {
    return 'ReviewsState.loaded(reviewsListEntity: $reviewsListEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedReviewsListState &&
            const DeepCollectionEquality()
                .equals(other._reviewsListEntity, _reviewsListEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reviewsListEntity));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedReviewsListStateCopyWith<_$LoadedReviewsListState> get copyWith =>
      __$$LoadedReviewsListStateCopyWithImpl<_$LoadedReviewsListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ReviewsEntity> reviewsListEntity) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(reviewsListEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ReviewsEntity> reviewsListEntity)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(reviewsListEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ReviewsEntity> reviewsListEntity)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(reviewsListEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingReviewsListState value) loading,
    required TResult Function(LoadedReviewsListState value) loaded,
    required TResult Function(ErrorReviewsListState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingReviewsListState value)? loading,
    TResult? Function(LoadedReviewsListState value)? loaded,
    TResult? Function(ErrorReviewsListState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingReviewsListState value)? loading,
    TResult Function(LoadedReviewsListState value)? loaded,
    TResult Function(ErrorReviewsListState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedReviewsListState implements ReviewsState {
  const factory LoadedReviewsListState(
          {required final List<ReviewsEntity> reviewsListEntity}) =
      _$LoadedReviewsListState;

  List<ReviewsEntity> get reviewsListEntity;
  @JsonKey(ignore: true)
  _$$LoadedReviewsListStateCopyWith<_$LoadedReviewsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorReviewsListStateCopyWith<$Res> {
  factory _$$ErrorReviewsListStateCopyWith(_$ErrorReviewsListState value,
          $Res Function(_$ErrorReviewsListState) then) =
      __$$ErrorReviewsListStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorReviewsListStateCopyWithImpl<$Res>
    extends _$ReviewsStateCopyWithImpl<$Res, _$ErrorReviewsListState>
    implements _$$ErrorReviewsListStateCopyWith<$Res> {
  __$$ErrorReviewsListStateCopyWithImpl(_$ErrorReviewsListState _value,
      $Res Function(_$ErrorReviewsListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorReviewsListState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorReviewsListState implements ErrorReviewsListState {
  const _$ErrorReviewsListState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ReviewsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorReviewsListState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorReviewsListStateCopyWith<_$ErrorReviewsListState> get copyWith =>
      __$$ErrorReviewsListStateCopyWithImpl<_$ErrorReviewsListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ReviewsEntity> reviewsListEntity) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ReviewsEntity> reviewsListEntity)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ReviewsEntity> reviewsListEntity)? loaded,
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
    required TResult Function(LoadingReviewsListState value) loading,
    required TResult Function(LoadedReviewsListState value) loaded,
    required TResult Function(ErrorReviewsListState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingReviewsListState value)? loading,
    TResult? Function(LoadedReviewsListState value)? loaded,
    TResult? Function(ErrorReviewsListState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingReviewsListState value)? loading,
    TResult Function(LoadedReviewsListState value)? loaded,
    TResult Function(ErrorReviewsListState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorReviewsListState implements ReviewsState {
  const factory ErrorReviewsListState({required final String message}) =
      _$ErrorReviewsListState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorReviewsListStateCopyWith<_$ErrorReviewsListState> get copyWith =>
      throw _privateConstructorUsedError;
}
