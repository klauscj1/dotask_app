import 'package:dotask_app/app/ui/routes/app_routes.dart';
import 'package:dotask_app/app/ui/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/router.dart' as router;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DoTask App',
      initialRoute: Routes.splash,
      routes: routes,
      navigatorObservers: [
        router.observer,
      ],
    );
  }
}
