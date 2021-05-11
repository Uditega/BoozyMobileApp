import 'package:bookzy/Pages/Explore.dart';
import 'package:bookzy/Pages/Home.dart';
import 'package:bookzy/Pages/MyLibrary.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:fancy_bar/fancy_bar.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _selectedIndex = 0;

  final _children = [
      Home(),
      Explore(),
      MyLibrary(),
  ];

  @override

  void onTappedItem (int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: FancyBottomBar(
        selectedIndex: _selectedIndex,
        onItemSelected: onTappedItem,
        items: [
          FancyItem(
            textColor: HexColor("0f8b8b"),
            title: 'Home',
            icon: Icon(Icons.home_filled),
          ),
          FancyItem(
            textColor: HexColor("0f8b8b"),
            title: 'Explore',
            icon: Icon(Icons.search_rounded),
          ),
          FancyItem(
            textColor: HexColor("0f8b8b"),
            title: 'My Library',
            icon: Icon(Icons.bookmark_border_rounded),
          ),
        ],
      ),
    );
  }
}
