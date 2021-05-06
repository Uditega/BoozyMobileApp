import 'package:flutter/material.dart';

import 'package:bookzy/Pages/SplashScreen.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch (settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
    }
  }
}