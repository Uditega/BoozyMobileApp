import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
        backgroundColor: HexColor("#f3f1f1"),
        body: SafeArea(
          child: Column(
            children: [
              Center(child: Text('This is my Home Page')),
            ],
          ),
        ),
      );
    });
  }
}
