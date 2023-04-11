// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gates_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GatesListModel _$GatesListModelFromJson(Map<String, dynamic> json) {
  return _GatesListModel.fromJson(json);
}

/// @nodoc
mixin _$GatesListModel {
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get backgroundUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GatesListModelCopyWith<GatesListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GatesListModelCopyWith<$Res> {
  factory $GatesListModelCopyWith(
          GatesListModel value, $Res Function(GatesListModel) then) =
      _$GatesListModelCopyWithImpl<$Res, GatesListModel>;
  @useResult
  $Res call({String? name, int? id, String? backgroundUrl});
}

/// @nodoc
class _$GatesListModelCopyWithImpl<$Res, $Val extends GatesListModel>
    implements $GatesListModelCopyWith<$Res> {
  _$GatesListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? backgroundUrl = freezed,
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
      backgroundUrl: freezed == backgroundUrl
          ? _value.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GatesListModelCopyWith<$Res>
    implements $GatesListModelCopyWith<$Res> {
  factory _$$_GatesListModelCopyWith(
          _$_GatesListModel value, $Res Function(_$_GatesListModel) then) =
      __$$_GatesListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? id, String? backgroundUrl});
}

/// @nodoc
class __$$_GatesListModelCopyWithImpl<$Res>
    extends _$GatesListModelCopyWithImpl<$Res, _$_GatesListModel>
    implements _$$_GatesListModelCopyWith<$Res> {
  __$$_GatesListModelCopyWithImpl(
      _$_GatesListModel _value, $Res Function(_$_GatesListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? backgroundUrl = freezed,
  }) {
    return _then(_$_GatesListModel(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      backgroundUrl: freezed == backgroundUrl
          ? _value.backgroundUrl
          : backgroundUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GatesListModel implements _GatesListModel {
  const _$_GatesListModel({this.name, this.id, this.backgroundUrl});

  factory _$_GatesListModel.fromJson(Map<String, dynamic> json) =>
      _$$_GatesListModelFromJson(json);

  @override
  final String? name;
  @override
  final int? id;
  @override
  final String? backgroundUrl;

  @override
  String toString() {
    return 'GatesListModel(name: $name, id: $id, backgroundUrl: $backgroundUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GatesListModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.backgroundUrl, backgroundUrl) ||
                other.backgroundUrl == backgroundUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, backgroundUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GatesListModelCopyWith<_$_GatesListModel> get copyWith =>
      __$$_GatesListModelCopyWithImpl<_$_GatesListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GatesListModelToJson(
      this,
    );
  }
}

abstract class _GatesListModel implements GatesListModel {
  const factory _GatesListModel(
      {final String? name,
      final int? id,
      final String? backgroundUrl}) = _$_GatesListModel;

  factory _GatesListModel.fromJson(Map<String, dynamic> json) =
      _$_GatesListModel.fromJson;

  @override
  String? get name;
  @override
  int? get id;
  @override
  String? get backgroundUrl;
  @override
  @JsonKey(ignore: true)
  _$$_GatesListModelCopyWith<_$_GatesListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
