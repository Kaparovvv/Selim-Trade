import 'package:selim_trade_app/feature/main/domain/entities/reviews/reviews_entity.dart';

// ignore: must_be_immutable
class ReviewsModel extends ReviewsEntity {
  ReviewsModel({
    required id,
    required photoUrl,
    required name,
    required text,
    required gate,
    required createdDate,
    required createdBy,
    required updatedByList,
  }) : super(
          id: id,
          photoUrl: photoUrl,
          name: name,
          text: gate,
          createdDate: createdDate,
          createdBy: createdBy,
          updatedByList: updatedByList,
        );

  factory ReviewsModel.fromJson(Map<String, dynamic> json) => ReviewsModel(
        id: json["id"],
        photoUrl: json["photoUrl"],
        name: json["name"],
        text: json["text"],
        gate: json["gate"],
        createdDate: json["created_date"],
        createdBy: json["createdBy"] == null
            ? null
            : CreatedByEntity.fromJson(json["createdBy"]),
        updatedByList: json["updatedByList"] == null
            ? []
            : List<UpdatedByListEntity>.from(json["updatedByList"]!
                .map((x) => UpdatedByListEntity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "photoUrl": photoUrl,
        "name": name,
        "text": text,
        "gate": gate,
        "created_date": createdDate,
        "createdBy": createdBy?.toJson(),
        "updatedByList": updatedByList == null
            ? []
            : List<dynamic>.from(updatedByList!.map((x) => x.toJson())),
      };
}
