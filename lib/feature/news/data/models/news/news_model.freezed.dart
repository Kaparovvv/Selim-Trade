// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) {
  return _NewsModel.fromJson(json);
}

/// @nodoc
mixin _$NewsModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<NewsPhoto>? get newsPhotos => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsModelCopyWith<NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelCopyWith<$Res> {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) then) =
      _$NewsModelCopyWithImpl<$Res, NewsModel>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      List<NewsPhoto>? newsPhotos,
      String? photoUrl,
      String? description});
}

/// @nodoc
class _$NewsModelCopyWithImpl<$Res, $Val extends NewsModel>
    implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? newsPhotos = freezed,
    Object? photoUrl = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      newsPhotos: freezed == newsPhotos
          ? _value.newsPhotos
          : newsPhotos // ignore: cast_nullable_to_non_nullable
              as List<NewsPhoto>?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsModelCopyWith<$Res> implements $NewsModelCopyWith<$Res> {
  factory _$$_NewsModelCopyWith(
          _$_NewsModel value, $Res Function(_$_NewsModel) then) =
      __$$_NewsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      List<NewsPhoto>? newsPhotos,
      String? photoUrl,
      String? description});
}

/// @nodoc
class __$$_NewsModelCopyWithImpl<$Res>
    extends _$NewsModelCopyWithImpl<$Res, _$_NewsModel>
    implements _$$_NewsModelCopyWith<$Res> {
  __$$_NewsModelCopyWithImpl(
      _$_NewsModel _value, $Res Function(_$_NewsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? newsPhotos = freezed,
    Object? photoUrl = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_NewsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      newsPhotos: freezed == newsPhotos
          ? _value._newsPhotos
          : newsPhotos // ignore: cast_nullable_to_non_nullable
              as List<NewsPhoto>?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsModel implements _NewsModel {
  const _$_NewsModel(
      {this.id,
      this.title,
      final List<NewsPhoto>? newsPhotos,
      this.photoUrl,
      this.description})
      : _newsPhotos = newsPhotos;

  factory _$_NewsModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  final List<NewsPhoto>? _newsPhotos;
  @override
  List<NewsPhoto>? get newsPhotos {
    final value = _newsPhotos;
    if (value == null) return null;
    if (_newsPhotos is EqualUnmodifiableListView) return _newsPhotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? photoUrl;
  @override
  final String? description;

  @override
  String toString() {
    return 'NewsModel(id: $id, title: $title, newsPhotos: $newsPhotos, photoUrl: $photoUrl, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._newsPhotos, _newsPhotos) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title,
      const DeepCollectionEquality().hash(_newsPhotos), photoUrl, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsModelCopyWith<_$_NewsModel> get copyWith =>
      __$$_NewsModelCopyWithImpl<_$_NewsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsModelToJson(
      this,
    );
  }
}

abstract class _NewsModel implements NewsModel {
  const factory _NewsModel(
      {final int? id,
      final String? title,
      final List<NewsPhoto>? newsPhotos,
      final String? photoUrl,
      final String? description}) = _$_NewsModel;

  factory _NewsModel.fromJson(Map<String, dynamic> json) =
      _$_NewsModel.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  List<NewsPhoto>? get newsPhotos;
  @override
  String? get photoUrl;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_NewsModelCopyWith<_$_NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsPhoto _$NewsPhotoFromJson(Map<String, dynamic> json) {
  return _NewsPhoto.fromJson(json);
}

/// @nodoc
mixin _$NewsPhoto {
  int? get id => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsPhotoCopyWith<NewsPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsPhotoCopyWith<$Res> {
  factory $NewsPhotoCopyWith(NewsPhoto value, $Res Function(NewsPhoto) then) =
      _$NewsPhotoCopyWithImpl<$Res, NewsPhoto>;
  @useResult
  $Res call({int? id, String? photoUrl});
}

/// @nodoc
class _$NewsPhotoCopyWithImpl<$Res, $Val extends NewsPhoto>
    implements $NewsPhotoCopyWith<$Res> {
  _$NewsPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsPhotoCopyWith<$Res> implements $NewsPhotoCopyWith<$Res> {
  factory _$$_NewsPhotoCopyWith(
          _$_NewsPhoto value, $Res Function(_$_NewsPhoto) then) =
      __$$_NewsPhotoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? photoUrl});
}

/// @nodoc
class __$$_NewsPhotoCopyWithImpl<$Res>
    extends _$NewsPhotoCopyWithImpl<$Res, _$_NewsPhoto>
    implements _$$_NewsPhotoCopyWith<$Res> {
  __$$_NewsPhotoCopyWithImpl(
      _$_NewsPhoto _value, $Res Function(_$_NewsPhoto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_NewsPhoto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsPhoto implements _NewsPhoto {
  const _$_NewsPhoto({this.id, this.photoUrl});

  factory _$_NewsPhoto.fromJson(Map<String, dynamic> json) =>
      _$$_NewsPhotoFromJson(json);

  @override
  final int? id;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'NewsPhoto(id: $id, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsPhoto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsPhotoCopyWith<_$_NewsPhoto> get copyWith =>
      __$$_NewsPhotoCopyWithImpl<_$_NewsPhoto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsPhotoToJson(
      this,
    );
  }
}

abstract class _NewsPhoto implements NewsPhoto {
  const factory _NewsPhoto({final int? id, final String? photoUrl}) =
      _$_NewsPhoto;

  factory _NewsPhoto.fromJson(Map<String, dynamic> json) =
      _$_NewsPhoto.fromJson;

  @override
  int? get id;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_NewsPhotoCopyWith<_$_NewsPhoto> get copyWith =>
      throw _privateConstructorUsedError;
}
