// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsModel _$$_NewsModelFromJson(Map<String, dynamic> json) => _$_NewsModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      newsPhotos: (json['newsPhotos'] as List<dynamic>?)
          ?.map((e) => NewsPhoto.fromJson(e as Map<String, dynamic>))
          .toList(),
      photoUrl: json['photoUrl'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_NewsModelToJson(_$_NewsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'newsPhotos': instance.newsPhotos,
      'photoUrl': instance.photoUrl,
      'description': instance.description,
    };

_$_NewsPhoto _$$_NewsPhotoFromJson(Map<String, dynamic> json) => _$_NewsPhoto(
      id: json['id'] as int?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$_NewsPhotoToJson(_$_NewsPhoto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photoUrl': instance.photoUrl,
    };
