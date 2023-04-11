import 'package:freezed_annotation/freezed_annotation.dart';

part 'works_model.freezed.dart';
part 'works_model.g.dart';

@freezed
class WorksModel with _$WorksModel {
  const factory WorksModel({
    int? id,
    String? photoUrl,
    String? createdDate,
  }) = _WorksModel;

  factory WorksModel.fromJson(Map<String, dynamic> json) =>
      _$WorksModelFromJson(json);
}
