import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraints) {
      return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 35, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: constraints.maxHeight* 0.1,
                  child: Image.asset(
                    'images/BookzyLogo.png',
                    height: 80,
                    width: 60,
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight* 0.005,
                ),
                Text(
                  'Create Account',
                  style: TextStyle(
                      fontFamily: 'LexendDeca',
                      fontSize: 20.0,
                      color: HexColor("#264b4b"),
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight* 0.03,
                ),
                Center(
                  child: Container(
                    width: constraints.maxWidth * 0.8,
                    height: constraints.maxHeight * 0.08,
                    child: Card(
                      elevation: 0,
                      color: HexColor("#4869D4"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/facebookIcon.png',
                            height: 17,
                          ),
                          SizedBox(
                            width: constraints.maxWidth * 0.04,
                          ),
                          Text(
                            'Create account with facebook',
                            style: TextStyle(
                              fontFamily: 'Suravaram',
                              fontSize: 18.0,
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight* 0.005,
                ),
                Center(
                  child: Container(
                    width: constraints.maxWidth * 0.8,
                    height: constraints.maxHeight * 0.08,
                    child: Card(
                      elevation: 0,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                          color: HexColor("#4869D4"),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/googleIcon.png',
                            height: 17,
                          ),
                          SizedBox(
                            width: constraints.maxWidth * 0.04,
                          ),
                          Text(
                            'Create account with google',
                            style: TextStyle(
                              fontFamily: 'Suravaram',
                              fontSize: 18.0,
                              color: HexColor("#4869D4"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: SizedBox(
                    height: constraints.maxHeight * 0.06,
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ),
                Text(
                  'Email Address',
                  style: TextStyle(
                    fontFamily: 'Suravaram',
                    fontSize: 16.0,
                    color: HexColor("#767676"),
                  ),
                ),
                Container(
                  width: constraints.maxWidth * 1,
                  height: constraints.maxHeight * 0.07,
                  child: TextFormField(
                    style: TextStyle(
                      fontFamily: 'Suravaram',
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      fillColor: HexColor("#e9e8e8"),
                      filled: true,
                      hintText: 'MirandanJ88@gmail.com',
                      hintStyle: TextStyle(
                        fontFamily: 'Suravaram',
                        fontSize: 14.0,
                        color: Colors.black54,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: HexColor("#e9e8e8"),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: HexColor("#e9e8e8"),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight* 0.02,
                ),
                Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'Suravaram',
                    fontSize: 16.0,
                    color: HexColor("#767676"),
                  ),
                ),
                Container(
                  width: constraints.maxWidth * 1,
                  height: constraints.maxHeight * 0.07,
                  child: TextFormField(
                    style: TextStyle(
                      fontFamily: 'Suravaram',
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                    obscureText: _passwordVisible ? false : true,
                    decoration: _passwordVisible
                        ? InputDecoration(
                            fillColor: HexColor("#e9e8e8"),
                            filled: true,
                            hintText: '************',
                            suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.visibility,
                                  color: HexColor("#767676"),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                }),
                            hintStyle: TextStyle(
                              fontFamily: 'Suravaram',
                              fontSize: 14.0,
                              color: Colors.black54,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: HexColor("#e9e8e8"),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: HexColor("#e9e8e8"),
                              ),
                            ),
                          )
                        : InputDecoration(
                            fillColor: HexColor("#e9e8e8"),
                            filled: true,
                            hintText: '************',
                            suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.visibility_off_outlined,
                                  color: HexColor("#767676"),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                }),
                            hintStyle: TextStyle(
                              fontFamily: 'Suravaram',
                              fontSize: 14.0,
                              color: Colors.black54,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: HexColor("#e9e8e8"),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: HexColor("#e9e8e8"),
                              ),
                            ),
                          ),
                  ),
                ),
                SizedBox(
                  height: constraints.maxHeight* 0.05,
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: (){
                    Navigator.pushNamed(context, '/SelectNovelGenre');
                  },
                  child: Container(
                    width: constraints.maxWidth * 1,
                    height: constraints.maxHeight * 0.08,
                    child: Card(
                      elevation: 0,
                      color: HexColor("0f8b8b"),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontFamily: 'Suravaram',
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: (){
                        Navigator.pushNamed(context, '/Login');
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Suravaram',
                          fontSize: 15.0,
                          color: HexColor("#0f8b8b"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: constraints.maxWidth * 0.02,
                    ),
                    Text(
                      'if you are already a bookzy',
                      style: TextStyle(
                        fontFamily: 'Suravaram',
                        fontSize: 15.0,
                        color: HexColor("#767676"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
