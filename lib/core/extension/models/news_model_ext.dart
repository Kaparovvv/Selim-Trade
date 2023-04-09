import 'package:selim_trade_app/feature/news/data/models/news_model.dart';

import '../../../feature/news/domain/entities/news/news_entity.dart';

// extension NewsModelExt on NewsModel {
//   NewsEntity toEntity() => NewsEntity(
//         id: id,
//         photoUrl: photoUrl,
//         title: title,
//         description: description,
//         createdDate: createdDate,
//         createdByNews: createdByNews,
//         updatedByListNews: updatedByListNews,
//       );
// }

NewsEntity newsModelToEntity(NewsModel newsModel) => NewsEntity(
      id: newsModel.id,
      photoUrl: newsModel.photoUrl,
      title: newsModel.title,
      description: newsModel.description,
      createdDate: newsModel.createdDate,
      createdByNews: newsModel.createdByNews,
      updatedByListNews: newsModel.updatedByListNews,
    );
