import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class GatesListEntity extends Equatable {
  GatesListEntity({
    this.name,
    this.id,
    this.backgroundUrl,
  });

  String? name;
  int? id;
  String? backgroundUrl;

  @override
  List<Object?> get props => [
        name,
        id,
        backgroundUrl,
      ];
}
