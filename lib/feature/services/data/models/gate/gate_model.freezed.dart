// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GateModel _$GateModelFromJson(Map<String, dynamic> json) {
  return _GateModel.fromJson(json);
}

/// @nodoc
mixin _$GateModel {
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get backgroundUrl => throw _privateConstructorUsedError;
  List<GateList>? get gateList => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<AdvantageGateList>? get advantageGateList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GateModelCopyWith<GateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GateModelCopyWith<$Res> {
  factory $GateModelCopyWith(GateModel value, $Res Function(GateModel) then) =
      _$GateModelCopyWithImpl<$Res, GateModel>;
  @useResult
  $Res call(
      {String? name,
      int? id,
      String? backgroundUrl,
      List<GateList>? gateList,
      String? description,
      List<AdvantageGateList>? advantageGateList});
}

/// @nodoc
class _$GateModelCopyWithImpl<$Res, $Val extends GateModel>
    implements $GateModelCopyWith<$Res> {
  _$GateModelCopyWithImpl(this._value, this._then);

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
    Object? gateList = freezed,
    Object? description = freezed,
    Object? advantageGateList = freezed,
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
      gateList: freezed == gateList
          ? _value.gateList
          : gateList // ignore: cast_nullable_to_non_nullable
              as List<GateList>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      advantageGateList: freezed == advantageGateList
          ? _value.advantageGateList
          : advantageGateList // ignore: cast_nullable_to_non_nullable
              as List<AdvantageGateList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GateModelCopyWith<$Res> implements $GateModelCopyWith<$Res> {
  factory _$$_GateModelCopyWith(
          _$_GateModel value, $Res Function(_$_GateModel) then) =
      __$$_GateModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int? id,
      String? backgroundUrl,
      List<GateList>? gateList,
      String? description,
      List<AdvantageGateList>? advantageGateList});
}

/// @nodoc
class __$$_GateModelCopyWithImpl<$Res>
    extends _$GateModelCopyWithImpl<$Res, _$_GateModel>
    implements _$$_GateModelCopyWith<$Res> {
  __$$_GateModelCopyWithImpl(
      _$_GateModel _value, $Res Function(_$_GateModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? backgroundUrl = freezed,
    Object? gateList = freezed,
    Object? description = freezed,
    Object? advantageGateList = freezed,
  }) {
    return _then(_$_GateModel(
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
      gateList: freezed == gateList
          ? _value._gateList
          : gateList // ignore: cast_nullable_to_non_nullable
              as List<GateList>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      advantageGateList: freezed == advantageGateList
          ? _value._advantageGateList
          : advantageGateList // ignore: cast_nullable_to_non_nullable
              as List<AdvantageGateList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GateModel implements _GateModel {
  const _$_GateModel(
      {this.name,
      this.id,
      this.backgroundUrl,
      final List<GateList>? gateList,
      this.description,
      final List<AdvantageGateList>? advantageGateList})
      : _gateList = gateList,
        _advantageGateList = advantageGateList;

  factory _$_GateModel.fromJson(Map<String, dynamic> json) =>
      _$$_GateModelFromJson(json);

  @override
  final String? name;
  @override
  final int? id;
  @override
  final String? backgroundUrl;
  final List<GateList>? _gateList;
  @override
  List<GateList>? get gateList {
    final value = _gateList;
    if (value == null) return null;
    if (_gateList is EqualUnmodifiableListView) return _gateList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  final List<AdvantageGateList>? _advantageGateList;
  @override
  List<AdvantageGateList>? get advantageGateList {
    final value = _advantageGateList;
    if (value == null) return null;
    if (_advantageGateList is EqualUnmodifiableListView)
      return _advantageGateList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GateModel(name: $name, id: $id, backgroundUrl: $backgroundUrl, gateList: $gateList, description: $description, advantageGateList: $advantageGateList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GateModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.backgroundUrl, backgroundUrl) ||
                other.backgroundUrl == backgroundUrl) &&
            const DeepCollectionEquality().equals(other._gateList, _gateList) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._advantageGateList, _advantageGateList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      id,
      backgroundUrl,
      const DeepCollectionEquality().hash(_gateList),
      description,
      const DeepCollectionEquality().hash(_advantageGateList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GateModelCopyWith<_$_GateModel> get copyWith =>
      __$$_GateModelCopyWithImpl<_$_GateModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GateModelToJson(
      this,
    );
  }
}

abstract class _GateModel implements GateModel {
  const factory _GateModel(
      {final String? name,
      final int? id,
      final String? backgroundUrl,
      final List<GateList>? gateList,
      final String? description,
      final List<AdvantageGateList>? advantageGateList}) = _$_GateModel;

  factory _GateModel.fromJson(Map<String, dynamic> json) =
      _$_GateModel.fromJson;

  @override
  String? get name;
  @override
  int? get id;
  @override
  String? get backgroundUrl;
  @override
  List<GateList>? get gateList;
  @override
  String? get description;
  @override
  List<AdvantageGateList>? get advantageGateList;
  @override
  @JsonKey(ignore: true)
  _$$_GateModelCopyWith<_$_GateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AdvantageGateList _$AdvantageGateListFromJson(Map<String, dynamic> json) {
  return _AdvantageGateList.fromJson(json);
}

/// @nodoc
mixin _$AdvantageGateList {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvantageGateListCopyWith<AdvantageGateList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvantageGateListCopyWith<$Res> {
  factory $AdvantageGateListCopyWith(
          AdvantageGateList value, $Res Function(AdvantageGateList) then) =
      _$AdvantageGateListCopyWithImpl<$Res, AdvantageGateList>;
  @useResult
  $Res call({int? id, String? title, String? description});
}

/// @nodoc
class _$AdvantageGateListCopyWithImpl<$Res, $Val extends AdvantageGateList>
    implements $AdvantageGateListCopyWith<$Res> {
  _$AdvantageGateListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdvantageGateListCopyWith<$Res>
    implements $AdvantageGateListCopyWith<$Res> {
  factory _$$_AdvantageGateListCopyWith(_$_AdvantageGateList value,
          $Res Function(_$_AdvantageGateList) then) =
      __$$_AdvantageGateListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, String? description});
}

/// @nodoc
class __$$_AdvantageGateListCopyWithImpl<$Res>
    extends _$AdvantageGateListCopyWithImpl<$Res, _$_AdvantageGateList>
    implements _$$_AdvantageGateListCopyWith<$Res> {
  __$$_AdvantageGateListCopyWithImpl(
      _$_AdvantageGateList _value, $Res Function(_$_AdvantageGateList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_AdvantageGateList(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$_AdvantageGateList implements _AdvantageGateList {
  const _$_AdvantageGateList({this.id, this.title, this.description});

  factory _$_AdvantageGateList.fromJson(Map<String, dynamic> json) =>
      _$$_AdvantageGateListFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;

  @override
  String toString() {
    return 'AdvantageGateList(id: $id, title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdvantageGateList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdvantageGateListCopyWith<_$_AdvantageGateList> get copyWith =>
      __$$_AdvantageGateListCopyWithImpl<_$_AdvantageGateList>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdvantageGateListToJson(
      this,
    );
  }
}

abstract class _AdvantageGateList implements AdvantageGateList {
  const factory _AdvantageGateList(
      {final int? id,
      final String? title,
      final String? description}) = _$_AdvantageGateList;

  factory _AdvantageGateList.fromJson(Map<String, dynamic> json) =
      _$_AdvantageGateList.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_AdvantageGateListCopyWith<_$_AdvantageGateList> get copyWith =>
      throw _privateConstructorUsedError;
}

GateList _$GateListFromJson(Map<String, dynamic> json) {
  return _GateList.fromJson(json);
}

/// @nodoc
mixin _$GateList {
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GateListCopyWith<GateList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GateListCopyWith<$Res> {
  factory $GateListCopyWith(GateList value, $Res Function(GateList) then) =
      _$GateListCopyWithImpl<$Res, GateList>;
  @useResult
  $Res call({String? name, int? id, String? photoUrl});
}

/// @nodoc
class _$GateListCopyWithImpl<$Res, $Val extends GateList>
    implements $GateListCopyWith<$Res> {
  _$GateListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? photoUrl = freezed,
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
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GateListCopyWith<$Res> implements $GateListCopyWith<$Res> {
  factory _$$_GateListCopyWith(
          _$_GateList value, $Res Function(_$_GateList) then) =
      __$$_GateListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? id, String? photoUrl});
}

/// @nodoc
class __$$_GateListCopyWithImpl<$Res>
    extends _$GateListCopyWithImpl<$Res, _$_GateList>
    implements _$$_GateListCopyWith<$Res> {
  __$$_GateListCopyWithImpl(
      _$_GateList _value, $Res Function(_$_GateList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_GateList(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_GateList implements _GateList {
  const _$_GateList({this.name, this.id, this.photoUrl});

  factory _$_GateList.fromJson(Map<String, dynamic> json) =>
      _$$_GateListFromJson(json);

  @override
  final String? name;
  @override
  final int? id;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'GateList(name: $name, id: $id, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GateList &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GateListCopyWith<_$_GateList> get copyWith =>
      __$$_GateListCopyWithImpl<_$_GateList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GateListToJson(
      this,
    );
  }
}

abstract class _GateList implements GateList {
  const factory _GateList(
      {final String? name,
      final int? id,
      final String? photoUrl}) = _$_GateList;

  factory _GateList.fromJson(Map<String, dynamic> json) = _$_GateList.fromJson;

  @override
  String? get name;
  @override
  int? get id;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_GateListCopyWith<_$_GateList> get copyWith =>
      throw _privateConstructorUsedError;
}
