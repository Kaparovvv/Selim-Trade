import 'package:freezed_annotation/freezed_annotation.dart';

part 'reviews_model.freezed.dart';
part 'reviews_model.g.dart';

@freezed
class ReviewsModel with _$ReviewsModel {
  const factory ReviewsModel({
    String? name,
    int? id,
    String? text,
    String? photoUrl,
    String? gate,
  }) = _ReviewsModel;

  factory ReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewsModelFromJson(json);
}
