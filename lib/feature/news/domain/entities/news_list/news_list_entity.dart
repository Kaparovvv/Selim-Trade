import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class NewsListEntity extends Equatable {
  NewsListEntity({
    this.id,
    this.title,
    this.photoUrl,
    this.description,
  });

  int? id;
  String? title;
  String? photoUrl;
  String? description;

  @override
  List<Object?> get props => [id, title, photoUrl, description];
}
