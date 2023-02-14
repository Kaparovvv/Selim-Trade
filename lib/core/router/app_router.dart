import 'package:auto_route/auto_route.dart';
import 'package:selim_trade_app/feature/main/presentation/main_screen.dart';
import 'package:selim_trade_app/feature/splash/splash_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page Route',
  routes: <AutoRoute>[
    AutoRoute(path: 'splashScreen', page: SplashScreen, initial: true),
    AutoRoute(path: 'mainScreen', page: MainScreen),
  ],
)
class $AppRouter {}
