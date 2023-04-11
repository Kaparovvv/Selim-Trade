// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/commons/cache_names_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:selim_trade_app/feature/our_works/data/models/works_model.dart';

import '../../../../core/error/cache_exception.dart';

abstract class WorksLocalDataSource {
  Future<List<WorksModel>> worksListFromCache();
  Future<void> worksListToCache(List<WorksModel> worksListModel);
}

@Singleton(as: WorksLocalDataSource)
class WorksLocalDataSourceImpl implements WorksLocalDataSource {
  final SharedPreferences sharedPreferences;

  WorksLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<List<WorksModel>> worksListFromCache() {
    final jsonWorksList =
        sharedPreferences.getStringList(CacheNamesHelper.worksList);

    if (jsonWorksList!.isNotEmpty) {
      return Future.value(jsonWorksList
          .map((work) => WorksModel.fromJson(json.decode(work)))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> worksListToCache(List<WorksModel> worksListModel) {
    final List<String> worksList =
        worksListModel.map((work) => json.encode(work.toJson())).toList();
    sharedPreferences.setStringList(CacheNamesHelper.worksList, worksList);
    // ignore: void_checks
    return Future.value(worksList);
  }
}
