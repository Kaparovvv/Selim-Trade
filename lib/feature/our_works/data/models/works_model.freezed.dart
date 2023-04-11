// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'works_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorksModel _$WorksModelFromJson(Map<String, dynamic> json) {
  return _WorksModel.fromJson(json);
}

/// @nodoc
mixin _$WorksModel {
  int? get id => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get createdDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorksModelCopyWith<WorksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorksModelCopyWith<$Res> {
  factory $WorksModelCopyWith(
          WorksModel value, $Res Function(WorksModel) then) =
      _$WorksModelCopyWithImpl<$Res, WorksModel>;
  @useResult
  $Res call({int? id, String? photoUrl, String? createdDate});
}

/// @nodoc
class _$WorksModelCopyWithImpl<$Res, $Val extends WorksModel>
    implements $WorksModelCopyWith<$Res> {
  _$WorksModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photoUrl = freezed,
    Object? createdDate = freezed,
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
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorksModelCopyWith<$Res>
    implements $WorksModelCopyWith<$Res> {
  factory _$$_WorksModelCopyWith(
          _$_WorksModel value, $Res Function(_$_WorksModel) then) =
      __$$_WorksModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? photoUrl, String? createdDate});
}

/// @nodoc
class __$$_WorksModelCopyWithImpl<$Res>
    extends _$WorksModelCopyWithImpl<$Res, _$_WorksModel>
    implements _$$_WorksModelCopyWith<$Res> {
  __$$_WorksModelCopyWithImpl(
      _$_WorksModel _value, $Res Function(_$_WorksModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? photoUrl = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_$_WorksModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorksModel implements _WorksModel {
  const _$_WorksModel({this.id, this.photoUrl, this.createdDate});

  factory _$_WorksModel.fromJson(Map<String, dynamic> json) =>
      _$$_WorksModelFromJson(json);

  @override
  final int? id;
  @override
  final String? photoUrl;
  @override
  final String? createdDate;

  @override
  String toString() {
    return 'WorksModel(id: $id, photoUrl: $photoUrl, createdDate: $createdDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorksModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, photoUrl, createdDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorksModelCopyWith<_$_WorksModel> get copyWith =>
      __$$_WorksModelCopyWithImpl<_$_WorksModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorksModelToJson(
      this,
    );
  }
}

abstract class _WorksModel implements WorksModel {
  const factory _WorksModel(
      {final int? id,
      final String? photoUrl,
      final String? createdDate}) = _$_WorksModel;

  factory _WorksModel.fromJson(Map<String, dynamic> json) =
      _$_WorksModel.fromJson;

  @override
  int? get id;
  @override
  String? get photoUrl;
  @override
  String? get createdDate;
  @override
  @JsonKey(ignore: true)
  _$$_WorksModelCopyWith<_$_WorksModel> get copyWith =>
      throw _privateConstructorUsedError;
}
