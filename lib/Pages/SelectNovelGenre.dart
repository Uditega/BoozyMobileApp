import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SelectNovelGenre extends StatefulWidget {
  @override
  _SelectNovelGenreState createState() => _SelectNovelGenreState();
}

class _SelectNovelGenreState extends State<SelectNovelGenre> {
  List<String> novelNames = [
    'Adventure',
    'Action',
    'Classic',
    'Drama',
    'Fairytale',
    'Crime',
    'Mystery',
    'Poetry',
    'Romance',
    'Scientific Friction',
    'True Crime',
    'Thriller',
    'Travel',
    'Suspense',
    'Murder Mystery',
    'Horror',
    'Fantasy',
    'Contemporary',
    'Humor',
    'Health',
    'Motivational',
    'Kids',
    'Paranormal',
    'Historical Fiction',
    'Cooking',
    'Art',
    'Development'
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0  ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: constraints.maxHeight * 0.07,
                  child: Center(
                    child: Image.asset(
                      'images/BookzyLogo.png',
                      height: 70,
                      width: 70,
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                Center(
                  child: Text(
                    'Improve Your\nFeed',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'LexendDeca',
                        fontSize: 23.0,
                        color: HexColor("#264b4b"),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.03,
                ),
                Container(
                  height: constraints.maxHeight * 0.6,
                  child: GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: 2.3,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                    children: List.generate(
                      novelNames.length,
                      (index) {
                        return Card(
                          elevation: 0,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 6, vertical: 3),
                              child: Text(
                                novelNames[index],
                                style: TextStyle(
                                  fontFamily: 'Suravaram',
                                  fontSize: 15.0,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.02,
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    Navigator.pushNamed(context, '/BottomNav');
                  },
                  child: Container(
                    width: constraints.maxWidth * 1,
                    height: constraints.maxHeight * 0.08,
                    child: Card(
                      elevation: 0,
                      color: HexColor("0f8b8b"),
                      child: Center(
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontFamily: 'Suravaram',
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
