import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ReviewsEntity extends Equatable {
  ReviewsEntity({
    this.id,
    this.photoUrl,
    this.name,
    this.text,
    this.gate,
    this.createdDate,
    this.createdBy,
    this.updatedByList,
  });

  int? id;
  String? photoUrl;
  String? name;
  String? text;
  String? gate;
  String? createdDate;
  CreatedByEntity? createdBy;
  List<UpdatedByListEntity>? updatedByList;

  @override
  List<Object?> get props => [
        id,
        photoUrl,
        name,
        text,
        gate,
        createdDate,
        createdBy,
        updatedByList,
      ];
}

class CreatedByEntity {
  CreatedByEntity({
    this.id,
    this.username,
    this.active,
    this.roles,
  });

  int? id;
  String? username;
  bool? active;
  List<String>? roles;

  factory CreatedByEntity.fromJson(Map<String, dynamic> json) =>
      CreatedByEntity(
        id: json["id"],
        username: json["username"],
        active: json["active"],
        roles: json["roles"] == null
            ? []
            : List<String>.from(json["roles"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "active": active,
        "roles": roles == null ? [] : List<dynamic>.from(roles!.map((x) => x)),
      };
}

class UpdatedByListEntity {
  UpdatedByListEntity({
    this.username,
    this.date,
  });

  String? username;
  String? date;

  factory UpdatedByListEntity.fromJson(Map<String, dynamic> json) =>
      UpdatedByListEntity(
        username: json["username"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "date": date,
      };
}
