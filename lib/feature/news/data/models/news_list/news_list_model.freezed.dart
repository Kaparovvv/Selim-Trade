// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsListModel _$NewsListModelFromJson(Map<String, dynamic> json) {
  return _NewsListModel.fromJson(json);
}

/// @nodoc
mixin _$NewsListModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsListModelCopyWith<NewsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsListModelCopyWith<$Res> {
  factory $NewsListModelCopyWith(
          NewsListModel value, $Res Function(NewsListModel) then) =
      _$NewsListModelCopyWithImpl<$Res, NewsListModel>;
  @useResult
  $Res call({int? id, String? title, String? photoUrl});
}

/// @nodoc
class _$NewsListModelCopyWithImpl<$Res, $Val extends NewsListModel>
    implements $NewsListModelCopyWith<$Res> {
  _$NewsListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? photoUrl = freezed,
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
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsListModelCopyWith<$Res>
    implements $NewsListModelCopyWith<$Res> {
  factory _$$_NewsListModelCopyWith(
          _$_NewsListModel value, $Res Function(_$_NewsListModel) then) =
      __$$_NewsListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, String? photoUrl});
}

/// @nodoc
class __$$_NewsListModelCopyWithImpl<$Res>
    extends _$NewsListModelCopyWithImpl<$Res, _$_NewsListModel>
    implements _$$_NewsListModelCopyWith<$Res> {
  __$$_NewsListModelCopyWithImpl(
      _$_NewsListModel _value, $Res Function(_$_NewsListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_NewsListModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsListModel implements _NewsListModel {
  const _$_NewsListModel({this.id, this.title, this.photoUrl});

  factory _$_NewsListModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsListModelFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'NewsListModel(id: $id, title: $title, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsListModelCopyWith<_$_NewsListModel> get copyWith =>
      __$$_NewsListModelCopyWithImpl<_$_NewsListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsListModelToJson(
      this,
    );
  }
}

abstract class _NewsListModel implements NewsListModel {
  const factory _NewsListModel(
      {final int? id,
      final String? title,
      final String? photoUrl}) = _$_NewsListModel;

  factory _NewsListModel.fromJson(Map<String, dynamic> json) =
      _$_NewsListModel.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_NewsListModelCopyWith<_$_NewsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
