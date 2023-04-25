// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_GateModel _$$_GateModelFromJson(Map<String, dynamic> json) => _$_GateModel(
      name: json['name'] as String?,
      id: json['id'] as int?,
      backgroundUrl: json['backgroundUrl'] as String?,
      gateList: (json['gateList'] as List<dynamic>?)
          ?.map((e) => GateList.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      advantageGateList: (json['advantageGateList'] as List<dynamic>?)
          ?.map((e) => AdvantageGateList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_GateModelToJson(_$_GateModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'backgroundUrl': instance.backgroundUrl,
      'gateList': instance.gateList,
      'description': instance.description,
      'advantageGateList': instance.advantageGateList,
    };

// ignore: non_constant_identifier_names
_$_AdvantageGateList _$$_AdvantageGateListFromJson(Map<String, dynamic> json) =>
    _$_AdvantageGateList(
      id: json['id'] as int?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_AdvantageGateListToJson(
        _$_AdvantageGateList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };

// ignore: non_constant_identifier_names
_$_GateList _$$_GateListFromJson(Map<String, dynamic> json) => _$_GateList(
      name: json['name'] as String?,
      id: json['id'] as int?,
      photoUrl: json['photoUrl'] as String?,
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_GateListToJson(_$_GateList instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'photoUrl': instance.photoUrl,
    };
