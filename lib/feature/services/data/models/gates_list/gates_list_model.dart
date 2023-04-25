import 'package:freezed_annotation/freezed_annotation.dart';

part 'gates_list_model.freezed.dart';
part 'gates_list_model.g.dart';

@freezed
class GatesListModel with _$GatesListModel {
  const factory GatesListModel({
    String? name,
    int? id,
    String? backgroundUrl,
  }) = _GatesListModel;

  factory GatesListModel.fromJson(Map<String, dynamic> json) =>
      _$GatesListModelFromJson(json);
}
