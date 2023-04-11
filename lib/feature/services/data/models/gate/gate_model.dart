import 'package:freezed_annotation/freezed_annotation.dart';

part 'gate_model.freezed.dart';
part 'gate_model.g.dart';

@freezed
class GateModel with _$GateModel {
  const factory GateModel({
    String? name,
    int? id,
    String? backgroundUrl,
    List<GateList>? gateList,
    String? description,
    List<AdvantageGateList>? advantageGateList,
  }) = _GateModel;

  factory GateModel.fromJson(Map<String, dynamic> json) =>
      _$GateModelFromJson(json);
}

@freezed
class AdvantageGateList with _$AdvantageGateList {
  const factory AdvantageGateList({
    int? id,
    String? title,
    String? description,
  }) = _AdvantageGateList;

  factory AdvantageGateList.fromJson(Map<String, dynamic> json) =>
      _$AdvantageGateListFromJson(json);
}

@freezed
class GateList with _$GateList {
  const factory GateList({
    String? name,
    int? id,
    String? photoUrl,
  }) = _GateList;

  factory GateList.fromJson(Map<String, dynamic> json) =>
      _$GateListFromJson(json);
}
