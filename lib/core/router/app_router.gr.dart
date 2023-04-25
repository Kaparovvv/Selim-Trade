// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../feature/main/presentation/main_screen.dart' as _i1;
import '../../feature/news/presentation/screens/news_feed_screen.dart' as _i4;
import '../../feature/news/presentation/screens/news_screen.dart' as _i3;
import '../../feature/our_works/presentation/screens/our_works_screen.dart'
    as _i5;
import '../../feature/services/presentaion/screens/list_services_screen.dart'
    as _i2;
import '../../feature/services/presentaion/screens/service_screen.dart' as _i6;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    MainScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainScreen(),
      );
    },
    ListServicesScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.ListServicesScreen(),
      );
    },
    NewsScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NewsScreenRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.NewsScreen(
          key: args.key,
          newsId: args.newsId,
        ),
      );
    },
    NewsFeedScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.NewsFeedScreen(),
      );
    },
    OurWorksScreenRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.OurWorksScreen(),
      );
    },
    ServiceScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceScreenRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.ServiceScreen(
          key: args.key,
          gateId: args.gateId,
        ),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'mainScreen',
          fullMatch: true,
        ),
        _i7.RouteConfig(
          MainScreenRoute.name,
          path: 'mainScreen',
        ),
        _i7.RouteConfig(
          ListServicesScreenRoute.name,
          path: 'listServices',
        ),
        _i7.RouteConfig(
          NewsScreenRoute.name,
          path: 'news',
        ),
        _i7.RouteConfig(
          NewsFeedScreenRoute.name,
          path: 'newsFeed',
        ),
        _i7.RouteConfig(
          OurWorksScreenRoute.name,
          path: 'ourWorks',
        ),
        _i7.RouteConfig(
          ServiceScreenRoute.name,
          path: 'services',
        ),
      ];
}

/// generated route for
/// [_i1.MainScreen]
class MainScreenRoute extends _i7.PageRouteInfo<void> {
  const MainScreenRoute()
      : super(
          MainScreenRoute.name,
          path: 'mainScreen',
        );

  static const String name = 'MainScreenRoute';
}

/// generated route for
/// [_i2.ListServicesScreen]
class ListServicesScreenRoute extends _i7.PageRouteInfo<void> {
  const ListServicesScreenRoute()
      : super(
          ListServicesScreenRoute.name,
          path: 'listServices',
        );

  static const String name = 'ListServicesScreenRoute';
}

/// generated route for
/// [_i3.NewsScreen]
class NewsScreenRoute extends _i7.PageRouteInfo<NewsScreenRouteArgs> {
  NewsScreenRoute({
    _i8.Key? key,
    required int newsId,
  }) : super(
          NewsScreenRoute.name,
          path: 'news',
          args: NewsScreenRouteArgs(
            key: key,
            newsId: newsId,
          ),
        );

  static const String name = 'NewsScreenRoute';
}

class NewsScreenRouteArgs {
  const NewsScreenRouteArgs({
    this.key,
    required this.newsId,
  });

  final _i8.Key? key;

  final int newsId;

  @override
  String toString() {
    return 'NewsScreenRouteArgs{key: $key, newsId: $newsId}';
  }
}

/// generated route for
/// [_i4.NewsFeedScreen]
class NewsFeedScreenRoute extends _i7.PageRouteInfo<void> {
  const NewsFeedScreenRoute()
      : super(
          NewsFeedScreenRoute.name,
          path: 'newsFeed',
        );

  static const String name = 'NewsFeedScreenRoute';
}

/// generated route for
/// [_i5.OurWorksScreen]
class OurWorksScreenRoute extends _i7.PageRouteInfo<void> {
  const OurWorksScreenRoute()
      : super(
          OurWorksScreenRoute.name,
          path: 'ourWorks',
        );

  static const String name = 'OurWorksScreenRoute';
}

/// generated route for
/// [_i6.ServiceScreen]
class ServiceScreenRoute extends _i7.PageRouteInfo<ServiceScreenRouteArgs> {
  ServiceScreenRoute({
    _i8.Key? key,
    required int gateId,
  }) : super(
          ServiceScreenRoute.name,
          path: 'services',
          args: ServiceScreenRouteArgs(
            key: key,
            gateId: gateId,
          ),
        );

  static const String name = 'ServiceScreenRoute';
}

class ServiceScreenRouteArgs {
  const ServiceScreenRouteArgs({
    this.key,
    required this.gateId,
  });

  final _i8.Key? key;

  final int gateId;

  @override
  String toString() {
    return 'ServiceScreenRouteArgs{key: $key, gateId: $gateId}';
  }
}
