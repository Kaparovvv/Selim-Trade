import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel({
    int? id,
    String? photoUrl,
    String? title,
    String? description,
    DateTime? createdDate,
    CreatedByNews? createdByNews,
    List<UpdatedByListNew>? updatedByListNews,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}

@freezed
class CreatedByNews with _$CreatedByNews {
  const factory CreatedByNews({
    int? id,
    String? username,
    bool? active,
    List<String>? roles,
  }) = _CreatedByNews;

  factory CreatedByNews.fromJson(Map<String, dynamic> json) =>
      _$CreatedByNewsFromJson(json);
}

@freezed
class UpdatedByListNew with _$UpdatedByListNew {
  const factory UpdatedByListNew({
    String? username,
    String? date,
  }) = _UpdatedByListNew;

  factory UpdatedByListNew.fromJson(Map<String, dynamic> json) =>
      _$UpdatedByListNewFromJson(json);
}
