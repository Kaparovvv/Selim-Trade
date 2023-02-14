import 'package:auto_route/auto_route.dart';
import 'package:selim_trade_app/feature/main/presentation/main_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page Route',
  routes: <AutoRoute>[
    AutoRoute(path: 'mainScreen', page: MainScreen, initial: true),
  ],
)
class $AppRouter {}
