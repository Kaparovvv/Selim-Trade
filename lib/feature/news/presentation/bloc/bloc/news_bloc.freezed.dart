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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageSize) getNewsListEvent,
    required TResult Function(int newsId) getNewsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageSize)? getNewsListEvent,
    TResult? Function(int newsId)? getNewsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageSize)? getNewsListEvent,
    TResult Function(int newsId)? getNewsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNewsListEvent value) getNewsListEvent,
    required TResult Function(GetNewsEvent value) getNewsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNewsListEvent value)? getNewsListEvent,
    TResult? Function(GetNewsEvent value)? getNewsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNewsListEvent value)? getNewsListEvent,
    TResult Function(GetNewsEvent value)? getNewsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetNewsListEventCopyWith<$Res> {
  factory _$$GetNewsListEventCopyWith(
          _$GetNewsListEvent value, $Res Function(_$GetNewsListEvent) then) =
      __$$GetNewsListEventCopyWithImpl<$Res>;
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
    required TResult Function(int newsId) getNewsEvent,
  }) {
    return getNewsListEvent(pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageSize)? getNewsListEvent,
    TResult? Function(int newsId)? getNewsEvent,
  }) {
    return getNewsListEvent?.call(pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageSize)? getNewsListEvent,
    TResult Function(int newsId)? getNewsEvent,
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
    required TResult Function(GetNewsEvent value) getNewsEvent,
  }) {
    return getNewsListEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNewsListEvent value)? getNewsListEvent,
    TResult? Function(GetNewsEvent value)? getNewsEvent,
  }) {
    return getNewsListEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNewsListEvent value)? getNewsListEvent,
    TResult Function(GetNewsEvent value)? getNewsEvent,
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

  int get pageSize;
  @JsonKey(ignore: true)
  _$$GetNewsListEventCopyWith<_$GetNewsListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNewsEventCopyWith<$Res> {
  factory _$$GetNewsEventCopyWith(
          _$GetNewsEvent value, $Res Function(_$GetNewsEvent) then) =
      __$$GetNewsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int newsId});
}

/// @nodoc
class __$$GetNewsEventCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$GetNewsEvent>
    implements _$$GetNewsEventCopyWith<$Res> {
  __$$GetNewsEventCopyWithImpl(
      _$GetNewsEvent _value, $Res Function(_$GetNewsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsId = null,
  }) {
    return _then(_$GetNewsEvent(
      newsId: null == newsId
          ? _value.newsId
          : newsId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetNewsEvent implements GetNewsEvent {
  const _$GetNewsEvent({required this.newsId});

  @override
  final int newsId;

  @override
  String toString() {
    return 'NewsEvent.getNewsEvent(newsId: $newsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNewsEvent &&
            (identical(other.newsId, newsId) || other.newsId == newsId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newsId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNewsEventCopyWith<_$GetNewsEvent> get copyWith =>
      __$$GetNewsEventCopyWithImpl<_$GetNewsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageSize) getNewsListEvent,
    required TResult Function(int newsId) getNewsEvent,
  }) {
    return getNewsEvent(newsId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageSize)? getNewsListEvent,
    TResult? Function(int newsId)? getNewsEvent,
  }) {
    return getNewsEvent?.call(newsId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageSize)? getNewsListEvent,
    TResult Function(int newsId)? getNewsEvent,
    required TResult orElse(),
  }) {
    if (getNewsEvent != null) {
      return getNewsEvent(newsId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetNewsListEvent value) getNewsListEvent,
    required TResult Function(GetNewsEvent value) getNewsEvent,
  }) {
    return getNewsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetNewsListEvent value)? getNewsListEvent,
    TResult? Function(GetNewsEvent value)? getNewsEvent,
  }) {
    return getNewsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetNewsListEvent value)? getNewsListEvent,
    TResult Function(GetNewsEvent value)? getNewsEvent,
    required TResult orElse(),
  }) {
    if (getNewsEvent != null) {
      return getNewsEvent(this);
    }
    return orElse();
  }
}

abstract class GetNewsEvent implements NewsEvent {
  const factory GetNewsEvent({required final int newsId}) = _$GetNewsEvent;

  int get newsId;
  @JsonKey(ignore: true)
  _$$GetNewsEventCopyWith<_$GetNewsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsListEntity> newsListEntity)
        loadedNewsList,
    required TResult Function(NewsEntity newsEntity) loadedNews,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsListEntity> newsListEntity)? loadedNewsList,
    TResult? Function(NewsEntity newsEntity)? loadedNews,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsListEntity> newsListEntity)? loadedNewsList,
    TResult Function(NewsEntity newsEntity)? loadedNews,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingNewsState value) loading,
    required TResult Function(LoadedNewsListState value) loadedNewsList,
    required TResult Function(LoadedNewsState value) loadedNews,
    required TResult Function(ErrorNewsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNewsState value)? loading,
    TResult? Function(LoadedNewsListState value)? loadedNewsList,
    TResult? Function(LoadedNewsState value)? loadedNews,
    TResult? Function(ErrorNewsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNewsState value)? loading,
    TResult Function(LoadedNewsListState value)? loadedNewsList,
    TResult Function(LoadedNewsState value)? loadedNews,
    TResult Function(ErrorNewsState value)? error,
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
    required TResult Function(List<NewsListEntity> newsListEntity)
        loadedNewsList,
    required TResult Function(NewsEntity newsEntity) loadedNews,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsListEntity> newsListEntity)? loadedNewsList,
    TResult? Function(NewsEntity newsEntity)? loadedNews,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsListEntity> newsListEntity)? loadedNewsList,
    TResult Function(NewsEntity newsEntity)? loadedNews,
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
    required TResult Function(LoadingNewsState value) loading,
    required TResult Function(LoadedNewsListState value) loadedNewsList,
    required TResult Function(LoadedNewsState value) loadedNews,
    required TResult Function(ErrorNewsState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNewsState value)? loading,
    TResult? Function(LoadedNewsListState value)? loadedNewsList,
    TResult? Function(LoadedNewsState value)? loadedNews,
    TResult? Function(ErrorNewsState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNewsState value)? loading,
    TResult Function(LoadedNewsListState value)? loadedNewsList,
    TResult Function(LoadedNewsState value)? loadedNews,
    TResult Function(ErrorNewsState value)? error,
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
abstract class _$$LoadingNewsStateCopyWith<$Res> {
  factory _$$LoadingNewsStateCopyWith(
          _$LoadingNewsState value, $Res Function(_$LoadingNewsState) then) =
      __$$LoadingNewsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingNewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$LoadingNewsState>
    implements _$$LoadingNewsStateCopyWith<$Res> {
  __$$LoadingNewsStateCopyWithImpl(
      _$LoadingNewsState _value, $Res Function(_$LoadingNewsState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingNewsState implements LoadingNewsState {
  const _$LoadingNewsState();

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingNewsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsListEntity> newsListEntity)
        loadedNewsList,
    required TResult Function(NewsEntity newsEntity) loadedNews,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsListEntity> newsListEntity)? loadedNewsList,
    TResult? Function(NewsEntity newsEntity)? loadedNews,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsListEntity> newsListEntity)? loadedNewsList,
    TResult Function(NewsEntity newsEntity)? loadedNews,
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
    required TResult Function(LoadingNewsState value) loading,
    required TResult Function(LoadedNewsListState value) loadedNewsList,
    required TResult Function(LoadedNewsState value) loadedNews,
    required TResult Function(ErrorNewsState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNewsState value)? loading,
    TResult? Function(LoadedNewsListState value)? loadedNewsList,
    TResult? Function(LoadedNewsState value)? loadedNews,
    TResult? Function(ErrorNewsState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNewsState value)? loading,
    TResult Function(LoadedNewsListState value)? loadedNewsList,
    TResult Function(LoadedNewsState value)? loadedNews,
    TResult Function(ErrorNewsState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingNewsState implements NewsState {
  const factory LoadingNewsState() = _$LoadingNewsState;
}

/// @nodoc
abstract class _$$LoadedNewsListStateCopyWith<$Res> {
  factory _$$LoadedNewsListStateCopyWith(_$LoadedNewsListState value,
          $Res Function(_$LoadedNewsListState) then) =
      __$$LoadedNewsListStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NewsListEntity> newsListEntity});
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
              as List<NewsListEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedNewsListState implements LoadedNewsListState {
  const _$LoadedNewsListState(
      {required final List<NewsListEntity> newsListEntity})
      : _newsListEntity = newsListEntity;

  final List<NewsListEntity> _newsListEntity;
  @override
  List<NewsListEntity> get newsListEntity {
    if (_newsListEntity is EqualUnmodifiableListView) return _newsListEntity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newsListEntity);
  }

  @override
  String toString() {
    return 'NewsState.loadedNewsList(newsListEntity: $newsListEntity)';
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
    required TResult Function(List<NewsListEntity> newsListEntity)
        loadedNewsList,
    required TResult Function(NewsEntity newsEntity) loadedNews,
    required TResult Function(String message) error,
  }) {
    return loadedNewsList(newsListEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsListEntity> newsListEntity)? loadedNewsList,
    TResult? Function(NewsEntity newsEntity)? loadedNews,
    TResult? Function(String message)? error,
  }) {
    return loadedNewsList?.call(newsListEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsListEntity> newsListEntity)? loadedNewsList,
    TResult Function(NewsEntity newsEntity)? loadedNews,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedNewsList != null) {
      return loadedNewsList(newsListEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingNewsState value) loading,
    required TResult Function(LoadedNewsListState value) loadedNewsList,
    required TResult Function(LoadedNewsState value) loadedNews,
    required TResult Function(ErrorNewsState value) error,
  }) {
    return loadedNewsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNewsState value)? loading,
    TResult? Function(LoadedNewsListState value)? loadedNewsList,
    TResult? Function(LoadedNewsState value)? loadedNews,
    TResult? Function(ErrorNewsState value)? error,
  }) {
    return loadedNewsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNewsState value)? loading,
    TResult Function(LoadedNewsListState value)? loadedNewsList,
    TResult Function(LoadedNewsState value)? loadedNews,
    TResult Function(ErrorNewsState value)? error,
    required TResult orElse(),
  }) {
    if (loadedNewsList != null) {
      return loadedNewsList(this);
    }
    return orElse();
  }
}

abstract class LoadedNewsListState implements NewsState {
  const factory LoadedNewsListState(
          {required final List<NewsListEntity> newsListEntity}) =
      _$LoadedNewsListState;

  List<NewsListEntity> get newsListEntity;
  @JsonKey(ignore: true)
  _$$LoadedNewsListStateCopyWith<_$LoadedNewsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedNewsStateCopyWith<$Res> {
  factory _$$LoadedNewsStateCopyWith(
          _$LoadedNewsState value, $Res Function(_$LoadedNewsState) then) =
      __$$LoadedNewsStateCopyWithImpl<$Res>;
  @useResult
  $Res call({NewsEntity newsEntity});
}

/// @nodoc
class __$$LoadedNewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$LoadedNewsState>
    implements _$$LoadedNewsStateCopyWith<$Res> {
  __$$LoadedNewsStateCopyWithImpl(
      _$LoadedNewsState _value, $Res Function(_$LoadedNewsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsEntity = null,
  }) {
    return _then(_$LoadedNewsState(
      newsEntity: null == newsEntity
          ? _value.newsEntity
          : newsEntity // ignore: cast_nullable_to_non_nullable
              as NewsEntity,
    ));
  }
}

/// @nodoc

class _$LoadedNewsState implements LoadedNewsState {
  const _$LoadedNewsState({required this.newsEntity});

  @override
  final NewsEntity newsEntity;

  @override
  String toString() {
    return 'NewsState.loadedNews(newsEntity: $newsEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedNewsState &&
            (identical(other.newsEntity, newsEntity) ||
                other.newsEntity == newsEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newsEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedNewsStateCopyWith<_$LoadedNewsState> get copyWith =>
      __$$LoadedNewsStateCopyWithImpl<_$LoadedNewsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsListEntity> newsListEntity)
        loadedNewsList,
    required TResult Function(NewsEntity newsEntity) loadedNews,
    required TResult Function(String message) error,
  }) {
    return loadedNews(newsEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsListEntity> newsListEntity)? loadedNewsList,
    TResult? Function(NewsEntity newsEntity)? loadedNews,
    TResult? Function(String message)? error,
  }) {
    return loadedNews?.call(newsEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsListEntity> newsListEntity)? loadedNewsList,
    TResult Function(NewsEntity newsEntity)? loadedNews,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loadedNews != null) {
      return loadedNews(newsEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingNewsState value) loading,
    required TResult Function(LoadedNewsListState value) loadedNewsList,
    required TResult Function(LoadedNewsState value) loadedNews,
    required TResult Function(ErrorNewsState value) error,
  }) {
    return loadedNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNewsState value)? loading,
    TResult? Function(LoadedNewsListState value)? loadedNewsList,
    TResult? Function(LoadedNewsState value)? loadedNews,
    TResult? Function(ErrorNewsState value)? error,
  }) {
    return loadedNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNewsState value)? loading,
    TResult Function(LoadedNewsListState value)? loadedNewsList,
    TResult Function(LoadedNewsState value)? loadedNews,
    TResult Function(ErrorNewsState value)? error,
    required TResult orElse(),
  }) {
    if (loadedNews != null) {
      return loadedNews(this);
    }
    return orElse();
  }
}

abstract class LoadedNewsState implements NewsState {
  const factory LoadedNewsState({required final NewsEntity newsEntity}) =
      _$LoadedNewsState;

  NewsEntity get newsEntity;
  @JsonKey(ignore: true)
  _$$LoadedNewsStateCopyWith<_$LoadedNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorNewsStateCopyWith<$Res> {
  factory _$$ErrorNewsStateCopyWith(
          _$ErrorNewsState value, $Res Function(_$ErrorNewsState) then) =
      __$$ErrorNewsStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorNewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$ErrorNewsState>
    implements _$$ErrorNewsStateCopyWith<$Res> {
  __$$ErrorNewsStateCopyWithImpl(
      _$ErrorNewsState _value, $Res Function(_$ErrorNewsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorNewsState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorNewsState implements ErrorNewsState {
  const _$ErrorNewsState({required this.message});

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
            other is _$ErrorNewsState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorNewsStateCopyWith<_$ErrorNewsState> get copyWith =>
      __$$ErrorNewsStateCopyWithImpl<_$ErrorNewsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsListEntity> newsListEntity)
        loadedNewsList,
    required TResult Function(NewsEntity newsEntity) loadedNews,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsListEntity> newsListEntity)? loadedNewsList,
    TResult? Function(NewsEntity newsEntity)? loadedNews,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsListEntity> newsListEntity)? loadedNewsList,
    TResult Function(NewsEntity newsEntity)? loadedNews,
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
    required TResult Function(LoadingNewsState value) loading,
    required TResult Function(LoadedNewsListState value) loadedNewsList,
    required TResult Function(LoadedNewsState value) loadedNews,
    required TResult Function(ErrorNewsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingNewsState value)? loading,
    TResult? Function(LoadedNewsListState value)? loadedNewsList,
    TResult? Function(LoadedNewsState value)? loadedNews,
    TResult? Function(ErrorNewsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingNewsState value)? loading,
    TResult Function(LoadedNewsListState value)? loadedNewsList,
    TResult Function(LoadedNewsState value)? loadedNews,
    TResult Function(ErrorNewsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorNewsState implements NewsState {
  const factory ErrorNewsState({required final String message}) =
      _$ErrorNewsState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorNewsStateCopyWith<_$ErrorNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
