import 'package:auto_route/auto_route.dart';
import 'package:selim_trade_app/feature/main/presentation/main_screen.dart';
import 'package:selim_trade_app/feature/news/presentation/screens/news_feed_screen.dart';
import 'package:selim_trade_app/feature/news/presentation/screens/news_screen.dart';
import 'package:selim_trade_app/feature/our_works/presentation/screens/our_works_screen.dart';
import 'package:selim_trade_app/feature/services/presentaion/screens/list_services_screen.dart';
import 'package:selim_trade_app/feature/services/presentaion/screens/service_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page Route',
  routes: <AutoRoute>[
    AutoRoute(path: 'mainScreen', page: MainScreen, initial: true),
    AutoRoute(path: 'listServices', page: ListServicesScreen),
    AutoRoute(path: 'news', page: NewsScreen),
    AutoRoute(path: 'newsFeed', page: NewsFeedScreen),
    AutoRoute(path: 'ourWorks', page: OurWorksScreen),
    AutoRoute(path: 'services', page: ServiceScreen),
  ],
)
class $AppRouter {}
