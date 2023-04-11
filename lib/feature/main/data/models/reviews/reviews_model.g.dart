// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_ReviewsModel _$$_ReviewsModelFromJson(Map<String, dynamic> json) =>
    _$_ReviewsModel(
      name: json['name'] as String?,
      id: json['id'] as int?,
      text: json['text'] as String?,
      photoUrl: json['photoUrl'] as String?,
      gate: json['gate'] as String?,
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_ReviewsModelToJson(_$_ReviewsModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'text': instance.text,
      'photoUrl': instance.photoUrl,
      'gate': instance.gate,
    };
