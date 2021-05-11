import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyLibrary extends StatefulWidget {
  @override
  _MyLibraryState createState() => _MyLibraryState();
}

class _MyLibraryState extends State<MyLibrary> {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraints){
      return Scaffold(
        backgroundColor: HexColor("#f3f1f1"),
        body: SafeArea(
          child: Column(
            children: [
              Center(
                child: Text('This is my Library Page'),
              ),
            ],
          ),
        ),
      );
    });
  }
}
