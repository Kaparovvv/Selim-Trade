// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reviews_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewsModel _$ReviewsModelFromJson(Map<String, dynamic> json) {
  return _ReviewsModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewsModel {
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get gate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewsModelCopyWith<ReviewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsModelCopyWith<$Res> {
  factory $ReviewsModelCopyWith(
          ReviewsModel value, $Res Function(ReviewsModel) then) =
      _$ReviewsModelCopyWithImpl<$Res, ReviewsModel>;
  @useResult
  $Res call(
      {String? name, int? id, String? text, String? photoUrl, String? gate});
}

/// @nodoc
class _$ReviewsModelCopyWithImpl<$Res, $Val extends ReviewsModel>
    implements $ReviewsModelCopyWith<$Res> {
  _$ReviewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? text = freezed,
    Object? photoUrl = freezed,
    Object? gate = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gate: freezed == gate
          ? _value.gate
          : gate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewsModelCopyWith<$Res>
    implements $ReviewsModelCopyWith<$Res> {
  factory _$$_ReviewsModelCopyWith(
          _$_ReviewsModel value, $Res Function(_$_ReviewsModel) then) =
      __$$_ReviewsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, int? id, String? text, String? photoUrl, String? gate});
}

/// @nodoc
class __$$_ReviewsModelCopyWithImpl<$Res>
    extends _$ReviewsModelCopyWithImpl<$Res, _$_ReviewsModel>
    implements _$$_ReviewsModelCopyWith<$Res> {
  __$$_ReviewsModelCopyWithImpl(
      _$_ReviewsModel _value, $Res Function(_$_ReviewsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? text = freezed,
    Object? photoUrl = freezed,
    Object? gate = freezed,
  }) {
    return _then(_$_ReviewsModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      gate: freezed == gate
          ? _value.gate
          : gate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewsModel implements _ReviewsModel {
  const _$_ReviewsModel(
      {this.name, this.id, this.text, this.photoUrl, this.gate});

  factory _$_ReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewsModelFromJson(json);

  @override
  final String? name;
  @override
  final int? id;
  @override
  final String? text;
  @override
  final String? photoUrl;
  @override
  final String? gate;

  @override
  String toString() {
    return 'ReviewsModel(name: $name, id: $id, text: $text, photoUrl: $photoUrl, gate: $gate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewsModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.gate, gate) || other.gate == gate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, text, photoUrl, gate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewsModelCopyWith<_$_ReviewsModel> get copyWith =>
      __$$_ReviewsModelCopyWithImpl<_$_ReviewsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewsModelToJson(
      this,
    );
  }
}

abstract class _ReviewsModel implements ReviewsModel {
  const factory _ReviewsModel(
      {final String? name,
      final int? id,
      final String? text,
      final String? photoUrl,
      final String? gate}) = _$_ReviewsModel;

  factory _ReviewsModel.fromJson(Map<String, dynamic> json) =
      _$_ReviewsModel.fromJson;

  @override
  String? get name;
  @override
  int? get id;
  @override
  String? get text;
  @override
  String? get photoUrl;
  @override
  String? get gate;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewsModelCopyWith<_$_ReviewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
