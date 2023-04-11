import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class NewsListEntity extends Equatable {
  NewsListEntity({
    this.id,
    this.title,
    this.photoUrl,
  });

  int? id;
  String? title;
  String? photoUrl;

  @override
  List<Object?> get props => [id, title, photoUrl];
}
