import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:selim_trade_app/utils/injection.dart';

import 'application.dart';
import 'feature/main/domain/usecases/reviews_list.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies(Env.prod);
  GetIt.I.isReady<ReviewsList>().then((_) {
    runApp(MyApp());
  });
}

// checkRegitration() {
//  
// }
