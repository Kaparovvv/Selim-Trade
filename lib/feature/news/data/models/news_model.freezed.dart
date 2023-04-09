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
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get createdDate => throw _privateConstructorUsedError;
  CreatedByNews? get createdByNews => throw _privateConstructorUsedError;
  List<UpdatedByListNew>? get updatedByListNews =>
      throw _privateConstructorUsedError;

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
      String? photoUrl,
      String? title,
      String? description,
      DateTime? createdDate,
      CreatedByNews? createdByNews,
      List<UpdatedByListNew>? updatedByListNews});

  $CreatedByNewsCopyWith<$Res>? get createdByNews;
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
    Object? photoUrl = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdDate = freezed,
    Object? createdByNews = freezed,
    Object? updatedByListNews = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdByNews: freezed == createdByNews
          ? _value.createdByNews
          : createdByNews // ignore: cast_nullable_to_non_nullable
              as CreatedByNews?,
      updatedByListNews: freezed == updatedByListNews
          ? _value.updatedByListNews
          : updatedByListNews // ignore: cast_nullable_to_non_nullable
              as List<UpdatedByListNew>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatedByNewsCopyWith<$Res>? get createdByNews {
    if (_value.createdByNews == null) {
      return null;
    }

    return $CreatedByNewsCopyWith<$Res>(_value.createdByNews!, (value) {
      return _then(_value.copyWith(createdByNews: value) as $Val);
    });
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
      String? photoUrl,
      String? title,
      String? description,
      DateTime? createdDate,
      CreatedByNews? createdByNews,
      List<UpdatedByListNew>? updatedByListNews});

  @override
  $CreatedByNewsCopyWith<$Res>? get createdByNews;
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
    Object? photoUrl = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? createdDate = freezed,
    Object? createdByNews = freezed,
    Object? updatedByListNews = freezed,
  }) {
    return _then(_$_NewsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdByNews: freezed == createdByNews
          ? _value.createdByNews
          : createdByNews // ignore: cast_nullable_to_non_nullable
              as CreatedByNews?,
      updatedByListNews: freezed == updatedByListNews
          ? _value._updatedByListNews
          : updatedByListNews // ignore: cast_nullable_to_non_nullable
              as List<UpdatedByListNew>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsModel implements _NewsModel {
  const _$_NewsModel(
      {this.id,
      this.photoUrl,
      this.title,
      this.description,
      this.createdDate,
      this.createdByNews,
      final List<UpdatedByListNew>? updatedByListNews})
      : _updatedByListNews = updatedByListNews;

  factory _$_NewsModel.fromJson(Map<String, dynamic> json) =>
      _$$_NewsModelFromJson(json);

  @override
  final int? id;
  @override
  final String? photoUrl;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? createdDate;
  @override
  final CreatedByNews? createdByNews;
  final List<UpdatedByListNew>? _updatedByListNews;
  @override
  List<UpdatedByListNew>? get updatedByListNews {
    final value = _updatedByListNews;
    if (value == null) return null;
    if (_updatedByListNews is EqualUnmodifiableListView)
      return _updatedByListNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewsModel(id: $id, photoUrl: $photoUrl, title: $title, description: $description, createdDate: $createdDate, createdByNews: $createdByNews, updatedByListNews: $updatedByListNews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.createdByNews, createdByNews) ||
                other.createdByNews == createdByNews) &&
            const DeepCollectionEquality()
                .equals(other._updatedByListNews, _updatedByListNews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      photoUrl,
      title,
      description,
      createdDate,
      createdByNews,
      const DeepCollectionEquality().hash(_updatedByListNews));

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
      final String? photoUrl,
      final String? title,
      final String? description,
      final DateTime? createdDate,
      final CreatedByNews? createdByNews,
      final List<UpdatedByListNew>? updatedByListNews}) = _$_NewsModel;

  factory _NewsModel.fromJson(Map<String, dynamic> json) =
      _$_NewsModel.fromJson;

  @override
  int? get id;
  @override
  String? get photoUrl;
  @override
  String? get title;
  @override
  String? get description;
  @override
  DateTime? get createdDate;
  @override
  CreatedByNews? get createdByNews;
  @override
  List<UpdatedByListNew>? get updatedByListNews;
  @override
  @JsonKey(ignore: true)
  _$$_NewsModelCopyWith<_$_NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatedByNews _$CreatedByNewsFromJson(Map<String, dynamic> json) {
  return _CreatedByNews.fromJson(json);
}

/// @nodoc
mixin _$CreatedByNews {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  List<String>? get roles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatedByNewsCopyWith<CreatedByNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatedByNewsCopyWith<$Res> {
  factory $CreatedByNewsCopyWith(
          CreatedByNews value, $Res Function(CreatedByNews) then) =
      _$CreatedByNewsCopyWithImpl<$Res, CreatedByNews>;
  @useResult
  $Res call({int? id, String? username, bool? active, List<String>? roles});
}

/// @nodoc
class _$CreatedByNewsCopyWithImpl<$Res, $Val extends CreatedByNews>
    implements $CreatedByNewsCopyWith<$Res> {
  _$CreatedByNewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? active = freezed,
    Object? roles = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatedByNewsCopyWith<$Res>
    implements $CreatedByNewsCopyWith<$Res> {
  factory _$$_CreatedByNewsCopyWith(
          _$_CreatedByNews value, $Res Function(_$_CreatedByNews) then) =
      __$$_CreatedByNewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? username, bool? active, List<String>? roles});
}

/// @nodoc
class __$$_CreatedByNewsCopyWithImpl<$Res>
    extends _$CreatedByNewsCopyWithImpl<$Res, _$_CreatedByNews>
    implements _$$_CreatedByNewsCopyWith<$Res> {
  __$$_CreatedByNewsCopyWithImpl(
      _$_CreatedByNews _value, $Res Function(_$_CreatedByNews) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? active = freezed,
    Object? roles = freezed,
  }) {
    return _then(_$_CreatedByNews(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      roles: freezed == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatedByNews implements _CreatedByNews {
  const _$_CreatedByNews(
      {this.id, this.username, this.active, final List<String>? roles})
      : _roles = roles;

  factory _$_CreatedByNews.fromJson(Map<String, dynamic> json) =>
      _$$_CreatedByNewsFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final bool? active;
  final List<String>? _roles;
  @override
  List<String>? get roles {
    final value = _roles;
    if (value == null) return null;
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreatedByNews(id: $id, username: $username, active: $active, roles: $roles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatedByNews &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality().equals(other._roles, _roles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, active,
      const DeepCollectionEquality().hash(_roles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatedByNewsCopyWith<_$_CreatedByNews> get copyWith =>
      __$$_CreatedByNewsCopyWithImpl<_$_CreatedByNews>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatedByNewsToJson(
      this,
    );
  }
}

abstract class _CreatedByNews implements CreatedByNews {
  const factory _CreatedByNews(
      {final int? id,
      final String? username,
      final bool? active,
      final List<String>? roles}) = _$_CreatedByNews;

  factory _CreatedByNews.fromJson(Map<String, dynamic> json) =
      _$_CreatedByNews.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  bool? get active;
  @override
  List<String>? get roles;
  @override
  @JsonKey(ignore: true)
  _$$_CreatedByNewsCopyWith<_$_CreatedByNews> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdatedByListNew _$UpdatedByListNewFromJson(Map<String, dynamic> json) {
  return _UpdatedByListNew.fromJson(json);
}

/// @nodoc
mixin _$UpdatedByListNew {
  String? get username => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdatedByListNewCopyWith<UpdatedByListNew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdatedByListNewCopyWith<$Res> {
  factory $UpdatedByListNewCopyWith(
          UpdatedByListNew value, $Res Function(UpdatedByListNew) then) =
      _$UpdatedByListNewCopyWithImpl<$Res, UpdatedByListNew>;
  @useResult
  $Res call({String? username, String? date});
}

/// @nodoc
class _$UpdatedByListNewCopyWithImpl<$Res, $Val extends UpdatedByListNew>
    implements $UpdatedByListNewCopyWith<$Res> {
  _$UpdatedByListNewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdatedByListNewCopyWith<$Res>
    implements $UpdatedByListNewCopyWith<$Res> {
  factory _$$_UpdatedByListNewCopyWith(
          _$_UpdatedByListNew value, $Res Function(_$_UpdatedByListNew) then) =
      __$$_UpdatedByListNewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, String? date});
}

/// @nodoc
class __$$_UpdatedByListNewCopyWithImpl<$Res>
    extends _$UpdatedByListNewCopyWithImpl<$Res, _$_UpdatedByListNew>
    implements _$$_UpdatedByListNewCopyWith<$Res> {
  __$$_UpdatedByListNewCopyWithImpl(
      _$_UpdatedByListNew _value, $Res Function(_$_UpdatedByListNew) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_UpdatedByListNew(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpdatedByListNew implements _UpdatedByListNew {
  const _$_UpdatedByListNew({this.username, this.date});

  factory _$_UpdatedByListNew.fromJson(Map<String, dynamic> json) =>
      _$$_UpdatedByListNewFromJson(json);

  @override
  final String? username;
  @override
  final String? date;

  @override
  String toString() {
    return 'UpdatedByListNew(username: $username, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatedByListNew &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatedByListNewCopyWith<_$_UpdatedByListNew> get copyWith =>
      __$$_UpdatedByListNewCopyWithImpl<_$_UpdatedByListNew>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdatedByListNewToJson(
      this,
    );
  }
}

abstract class _UpdatedByListNew implements UpdatedByListNew {
  const factory _UpdatedByListNew(
      {final String? username, final String? date}) = _$_UpdatedByListNew;

  factory _UpdatedByListNew.fromJson(Map<String, dynamic> json) =
      _$_UpdatedByListNew.fromJson;

  @override
  String? get username;
  @override
  String? get date;
  @override
  @JsonKey(ignore: true)
  _$$_UpdatedByListNewCopyWith<_$_UpdatedByListNew> get copyWith =>
      throw _privateConstructorUsedError;
}
