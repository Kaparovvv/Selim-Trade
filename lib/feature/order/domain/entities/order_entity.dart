import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class OrderEntity extends Equatable {
  OrderEntity({
    this.id,
    this.name,
    this.phoneNumber,
    this.message,
  });

  int? id;
  String? name;
  String? phoneNumber;
  String? message;

  @override
  List<Object?> get props => [id, name, phoneNumber, message];
}
