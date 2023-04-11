
import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ReviewsEntity extends Equatable {
  ReviewsEntity({
    this.name,
    this.id,
    this.text,
    this.photoUrl,
    this.gate,
  });

  String? name;
  int? id;
  String? text;
  String? photoUrl;
  String? gate;

  @override
  List<Object?> get props => [
        name,
        id,
        text,
        photoUrl,
        gate,
      ];
}
