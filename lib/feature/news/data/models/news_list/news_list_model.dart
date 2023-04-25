import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_list_model.freezed.dart';
part 'news_list_model.g.dart';

@freezed
class NewsListModel with _$NewsListModel {
  const factory NewsListModel({
    int? id,
    String? title,
    String? photoUrl,
    String? description,
  }) = _NewsListModel;

  factory NewsListModel.fromJson(Map<String, dynamic> json) =>
      _$NewsListModelFromJson(json);
}
