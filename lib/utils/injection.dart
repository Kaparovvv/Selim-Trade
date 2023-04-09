import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:selim_trade_app/utils/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies(String environment) =>
    getIt.init(environment: environment);

abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
}
