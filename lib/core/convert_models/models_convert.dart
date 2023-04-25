import 'package:selim_trade_app/feature/main/data/models/reviews/reviews_model.dart';
import 'package:selim_trade_app/feature/main/domain/entities/reviews_entity.dart';
import 'package:selim_trade_app/feature/news/data/models/news_list/news_list_model.dart';
import 'package:selim_trade_app/feature/news/domain/entities/news_list/news_list_entity.dart';
import 'package:selim_trade_app/feature/order/data/models/order_model.dart';
import 'package:selim_trade_app/feature/order/domain/entities/order_entity.dart';
import 'package:selim_trade_app/feature/our_works/data/models/works_model.dart';
import 'package:selim_trade_app/feature/our_works/domain/entities/works_entity.dart';
import 'package:selim_trade_app/feature/services/data/models/gates_list/gates_list_model.dart';
import 'package:selim_trade_app/feature/services/domain/entities/gates_list_entity.dart';

import '../../feature/news/data/models/news/news_model.dart';
import '../../feature/news/domain/entities/news/news_entity.dart';
import '../../feature/services/data/models/gate/gate_model.dart';
import '../../feature/services/domain/entities/gate/gate_entity.dart';

NewsEntity newsModelToEntity(NewsModel newsModel) => NewsEntity(
      id: newsModel.id,
      title: newsModel.title,
      photoUrl: newsModel.photoUrl,
      description: newsModel.description,
      newsPhotos: newsModel.newsPhotos,
    );

NewsListEntity newsListModelToEntity(NewsListModel newsListModel) =>
    NewsListEntity(
      id: newsListModel.id,
      title: newsListModel.title,
      photoUrl: newsListModel.photoUrl,
      description: newsListModel.description,
    );

ReviewsEntity reviewsModelToEntity(ReviewsModel reviewsModel) => ReviewsEntity(
      id: reviewsModel.id,
      name: reviewsModel.name,
      text: reviewsModel.text,
      photoUrl: reviewsModel.photoUrl,
      gate: reviewsModel.gate,
    );

GatesListEntity gateListModelToEntity(GatesListModel gatesListModel) =>
    GatesListEntity(
      id: gatesListModel.id,
      name: gatesListModel.name,
      backgroundUrl: gatesListModel.backgroundUrl,
    );

GateEntity gateModelToEntity(GateModel gateModel) => GateEntity(
      id: gateModel.id,
      name: gateModel.name,
      backgroundUrl: gateModel.backgroundUrl,
      gateList: gateModel.gateList,
      description: gateModel.description,
      advantageGateList: gateModel.advantageGateList,
    );

WorksEntity worksModelToEntity(WorksModel worksModel) => WorksEntity(
      id: worksModel.id,
      photoUrl: worksModel.photoUrl,
      createdDate: worksModel.createdDate,
    );

OrderEntity orderModelToEntity(OrderModel orderModel) => OrderEntity(
      id: orderModel.id,
      name: orderModel.name,
      phoneNumber: orderModel.phoneNumber,
      message: orderModel.message,
    );
