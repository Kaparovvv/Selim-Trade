// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/commons/cache_names_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:selim_trade_app/feature/services/data/models/gates_list/gates_list_model.dart';

import '../../../../../core/error/cache_exception.dart';

abstract class GateListLocalDataSource {
  Future<List<GatesListModel>> gatesListFromCache();
  Future<void> gateListToCache(List<GatesListModel> gateListModel);
}

@Singleton(as: GateListLocalDataSource)
class GateListLocalDataSourceImpl implements GateListLocalDataSource {
  final SharedPreferences sharedPreferences;
  GateListLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<List<GatesListModel>> gatesListFromCache() {
    final jsonGateList =
        sharedPreferences.getStringList(CacheNamesHelper.gateList);
    if (jsonGateList!.isNotEmpty) {
      return Future.value(jsonGateList
          .map((gateList) => GatesListModel.fromJson(json.decode(gateList)))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> gateListToCache(List<GatesListModel> gateListModel) {
    final List<String> gateList = gateListModel
        .map((gateList) => json.encode(gateList.toJson()))
        .toList();
    sharedPreferences.setStringList(CacheNamesHelper.gateList, gateList);
    // ignore: void_checks
    return Future.value(gateList);
  }
}
