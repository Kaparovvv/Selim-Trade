// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/core/commons/cache_names_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:selim_trade_app/feature/services/data/models/gate/gate_model.dart';

import '../../../../../core/error/cache_exception.dart';

abstract class GateLocalDataSource {
  Future<GateModel> gateFromCache();
  Future<void> gateToCache(GateModel gateModel);
}

@Singleton(as: GateLocalDataSource)
class GateLocalDataSourceImpl implements GateLocalDataSource {
  final SharedPreferences sharedPreferences;

  GateLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<GateModel> gateFromCache() {
    final jsonGate = sharedPreferences.getString(CacheNamesHelper.gate);
    if (jsonGate!.isNotEmpty) {
      return Future.value(
        GateModel.fromJson(
          jsonDecode(jsonGate),
        ),
      );
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> gateToCache(GateModel gateModel) {
    return sharedPreferences.setString(
      CacheNamesHelper.gate,
      json.encode(
        gateModel.toJson(),
      ),
    );
  }
}
