import 'package:flutter/material.dart';
import 'package:simple_consume_api/presentation/pages/homepage.dart';
import 'package:simple_consume_api/presentation/route/route.gr.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
