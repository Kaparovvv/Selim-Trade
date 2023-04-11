import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class WorksEntity extends Equatable {
  WorksEntity({
    this.id,
    this.photoUrl,
    this.createdDate,
  });

  int? id;
  String? photoUrl;
  String? createdDate;

  @override
  List<Object?> get props => [
        id,
        photoUrl,
        createdDate,
      ];
}
