import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Scaffold(
        backgroundColor: HexColor("#f3f1f1"),
        appBar: AppBar(
          backgroundColor: HexColor("#f3f1f1"),
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              'images/BookzyLogo.png',
              height: 10,
              width: 10,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('images/malePic.jpg'),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello Jackson',
                  style: TextStyle(
                    fontFamily: 'Suravaram',
                    fontSize: 18.0,
                    color: HexColor("#131313"),
                  ),
                ),
                Text(
                  'Todays Booklist',
                  style: TextStyle(
                      fontFamily: 'LexendDeca',
                      fontSize: 25.0,
                      color: HexColor("0f8b8b"),
                      fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.03,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.32,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              height: constraints.maxHeight * 0.28,
                              width: constraints.maxWidth * 0.38,
                              child: Card(
                                elevation: 0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Image.asset('images/books3.png'),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              height: constraints.maxHeight * 0.28,
                              width: constraints.maxWidth * 0.38,
                              child: Card(
                                elevation: 0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Image.asset('images/books1.png'),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              height: constraints.maxHeight * 0.28,
                              width: constraints.maxWidth * 0.38,
                              child: Card(
                                elevation: 0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Image.asset('images/books3.png'),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              height: constraints.maxHeight * 0.28,
                              width: constraints.maxWidth * 0.38,
                              child: Card(
                                elevation: 0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Image.asset('images/books3.png'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight* 0.03,
                ),
                Text(
                  'Popular Booklist',
                  style: TextStyle(
                    fontFamily: 'LexendDeca',
                    fontSize: 18.0,
                    color: HexColor("0f8b8b"),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.03,
                ),
                SizedBox(
                  height: constraints.maxHeight * 0.32,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              height: constraints.maxHeight * 0.28,
                              width: constraints.maxWidth * 0.38,
                              child: Card(
                                elevation: 0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Image.asset('images/books3.png'),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              height: constraints.maxHeight * 0.28,
                              width: constraints.maxWidth * 0.38,
                              child: Card(
                                elevation: 0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Image.asset('images/books1.png'),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              height: constraints.maxHeight * 0.28,
                              width: constraints.maxWidth * 0.38,
                              child: Card(
                                elevation: 0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Image.asset('images/books3.png'),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              height: constraints.maxHeight * 0.28,
                              width: constraints.maxWidth * 0.38,
                              child: Card(
                                elevation: 0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 20,
                            child: Image.asset('images/books3.png'),
                          ),
                        ],
                      ),
                    ],
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
