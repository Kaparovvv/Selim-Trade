import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selim_trade_app/core/commons/theme_helper.dart';
import 'package:selim_trade_app/core/router/app_router.gr.dart';
import 'package:selim_trade_app/feature/main/presentation/blocs/bloc/reviews_bloc.dart';
import 'package:selim_trade_app/feature/news/presentation/bloc/bloc/news_bloc.dart';
import 'package:selim_trade_app/feature/order/presentation/bloc/order_bloc.dart';
import 'package:selim_trade_app/feature/our_works/presentation/bloc/works_bloc.dart';
import 'package:selim_trade_app/feature/services/presentaion/blocs/bloc/gates_bloc.dart';
import 'package:selim_trade_app/utils/injection.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ReviewsBloc(
            reviewsList: getIt(),
          ),
        ),
        BlocProvider(
          create: (_) => NewsBloc(
            newsCase: getIt(),
            newsListCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (_) => GatesBloc(
            gateCase: getIt(),
            gateListCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (_) => WorksBloc(
            worksCase: getIt(),
          ),
        ),
        BlocProvider(
          create: (_) => OrderBloc(
            orderCase: getIt(),
            networkInfo: getIt(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        debugShowCheckedModeBanner: false,
        title: 'Selim Trade',
        color: ThemeHelper.white,
        theme: ThemeData(
          fontFamily: 'Montserrat',
          appBarTheme: const AppBarTheme(backgroundColor: ThemeHelper.white),
        ),
      ),
    );
  }
}
