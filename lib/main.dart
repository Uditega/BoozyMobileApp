import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bookzy/routeGenerator.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookzy',
      initialRoute: '/',
      theme: ThemeData(),
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
