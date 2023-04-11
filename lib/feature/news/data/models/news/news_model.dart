import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel({
    int? id,
    String? title,
    List<NewsPhoto>? newsPhotos,
    String? photoUrl,
    String? description,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}

@freezed
class NewsPhoto with _$NewsPhoto {
  const factory NewsPhoto({
    int? id,
    String? photoUrl,
  }) = _NewsPhoto;

  factory NewsPhoto.fromJson(Map<String, dynamic> json) =>
      _$NewsPhotoFromJson(json);
}
