import 'package:flutter/material.dart';
import 'package:selim_trade_app/commons/theme_helper.dart';
import 'package:selim_trade_app/core/router/app_router.gr.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      debugShowCheckedModeBanner: false,
      title: 'Selim Trade',
      color: ThemeHelper.white,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        appBarTheme: const AppBarTheme(backgroundColor: ThemeHelper.white),
      ),
    );
  }
}