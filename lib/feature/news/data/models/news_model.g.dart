// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsModel _$$_NewsModelFromJson(Map<String, dynamic> json) => _$_NewsModel(
      id: json['id'] as int?,
      photoUrl: json['photoUrl'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      createdDate: json['createdDate'] == null
          ? null
          : DateTime.parse(json['createdDate'] as String),
      createdByNews: json['createdByNews'] == null
          ? null
          : CreatedByNews.fromJson(
              json['createdByNews'] as Map<String, dynamic>),
      updatedByListNews: (json['updatedByListNews'] as List<dynamic>?)
          ?.map((e) => UpdatedByListNew.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NewsModelToJson(_$_NewsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photoUrl': instance.photoUrl,
      'title': instance.title,
      'description': instance.description,
      'createdDate': instance.createdDate?.toIso8601String(),
      'createdByNews': instance.createdByNews,
      'updatedByListNews': instance.updatedByListNews,
    };

_$_CreatedByNews _$$_CreatedByNewsFromJson(Map<String, dynamic> json) =>
    _$_CreatedByNews(
      id: json['id'] as int?,
      username: json['username'] as String?,
      active: json['active'] as bool?,
      roles:
          (json['roles'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_CreatedByNewsToJson(_$_CreatedByNews instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'active': instance.active,
      'roles': instance.roles,
    };

_$_UpdatedByListNew _$$_UpdatedByListNewFromJson(Map<String, dynamic> json) =>
    _$_UpdatedByListNew(
      username: json['username'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$_UpdatedByListNewToJson(_$_UpdatedByListNew instance) =>
    <String, dynamic>{
      'username': instance.username,
      'date': instance.date,
    };
