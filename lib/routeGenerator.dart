import 'package:bookzy/Pages/CreateAccount.dart';
import 'package:flutter/material.dart';

import 'package:bookzy/Pages/SplashScreen.dart';
import 'package:bookzy/Pages/Login.dart';
import 'package:bookzy/Pages/SelectNovelGenre.dart';
import 'package:bookzy/Pages/BottomNavigation.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch (settings.name){
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/CreateAccount':
        return MaterialPageRoute(builder: (_) => CreateAccount());
      case '/Login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/SelectNovelGenre':
        return MaterialPageRoute(builder: (_) => SelectNovelGenre());
      case '/BottomNav':
        return MaterialPageRoute(builder: (_) => BottomNavigation());
    }
  }
}