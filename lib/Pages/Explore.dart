import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
        backgroundColor: HexColor("#f3f1f1"),
        body: SafeArea(
          child: Column(
            children: [
              Center(child: Text('This is my Explore Page')),
            ],
          ),
        ),
      );
    });
  }
}
