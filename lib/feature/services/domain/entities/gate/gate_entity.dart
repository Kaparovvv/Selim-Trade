import 'package:equatable/equatable.dart';

import '../../../data/models/gate/gate_model.dart';

// ignore: must_be_immutable
class GateEntity extends Equatable {
  GateEntity({
    this.name,
    this.id,
    this.backgroundUrl,
    this.gateList,
    this.description,
    this.advantageGateList,
  });

  String? name;
  int? id;
  String? backgroundUrl;
  List<GateList>? gateList;
  String? description;
  List<AdvantageGateList>? advantageGateList;

  @override
  List<Object?> get props => [
        name,
        id,
        backgroundUrl,
        gateList,
        description,
        advantageGateList,
      ];
}
