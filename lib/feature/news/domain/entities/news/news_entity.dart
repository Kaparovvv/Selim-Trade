import 'package:equatable/equatable.dart';

import '../../../data/models/news/news_model.dart';

// ignore: must_be_immutable
class NewsEntity extends Equatable {
  NewsEntity({
    this.id,
    this.title,
    this.newsPhotos,
    this.photoUrl,
    this.description,
  });

  int? id;
  String? title;
  List<NewsPhoto>? newsPhotos;
  String? photoUrl;
  String? description;

  @override
  List<Object?> get props => [
        id,
        title,
        newsPhotos,
        photoUrl,
        description,
      ];
}
