import 'package:bookzy/Pages/CreateAccount.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => CreateAccount()),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
            backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('images/BookzyLogo.png',
              height: 120,
              width: 120,
              ),
            ),
            Text('BOOKZY',
            style: TextStyle(
              fontFamily: 'Suravaram',
              fontSize: 30.0,
              color: HexColor("#264b4b"),
            ),
            ),
          ],
        ),
      );
    });
  }
}
