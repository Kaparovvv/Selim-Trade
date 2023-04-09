import '../../../data/models/news_model.dart';

class NewsEntity {
  NewsEntity({
    this.id,
    this.photoUrl,
    this.title,
    this.description,
    this.createdDate,
    this.createdByNews,
    this.updatedByListNews,
  });

  int? id;
  String? photoUrl;
  String? title;
  String? description;
  DateTime? createdDate;
  CreatedByNews? createdByNews;
  List<UpdatedByListNew>? updatedByListNews;

  newsConvert(NewsModel newsModel) => NewsEntity(
        id: newsModel.id,
        photoUrl: newsModel.photoUrl,
        title: newsModel.title,
        description: newsModel.description,
        createdDate: newsModel.createdDate,
        createdByNews: newsModel.createdByNews,
        updatedByListNews: newsModel.updatedByListNews,
      );
}
