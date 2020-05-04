import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hasLoginStarted = false;
  Map data = Map();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Color(0xFFEFF3FB),
        statusBarBrightness: Brightness.light));
    return Scaffold(
      backgroundColor: Color(0xFFeff3fb),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 40,
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Image.asset('assets/images/egnite-dark.png'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "NEVER STOP LEARNING",
                      style: TextStyle(
                          fontFamily: 'poppins',
                          color: Colors.black87.withOpacity(0.5)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 180,
              child: Image.asset('assets/images/auth.png'),
            ),
            Container(
              height: MediaQuery.of(context).size.height -
                  (MediaQuery.of(context).padding.top + 260),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(30.0),
                      topRight: const Radius.circular(30.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20),
                  Align(
                    child: Container(
                      height: 50,
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.black87),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Color(0xFFB0B9C0).withOpacity(0.5),
                            style: BorderStyle.solid,
                            width: 1.0),
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(30.0),
                            bottomLeft: const Radius.circular(30.0),
                            bottomRight: const Radius.circular(30.0),
                            topRight: const Radius.circular(30.0))),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          data["identifier"] = value;
                        });
                      },
                      cursorColor: Color(0xFFB0B9C0),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: Color(0xFFB0B9C0), fontFamily: 'poppins'),
                          labelStyle: TextStyle(
                              color: Color(0xFFB0B9C0), fontFamily: 'poppins'),
                          suffixIcon: Icon(Icons.face,
                              color: Color(0xFFB0B9C0), size: 22.0),
                          contentPadding: EdgeInsets.only(
                              left: 25.0, top: 10.0, bottom: 10.0, right: 35.0),
                          border: InputBorder.none,
                          hintText: 'Username'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Color(0xFFB0B9C0).withOpacity(0.5),
                            style: BorderStyle.solid,
                            width: 1.0),
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(30.0),
                            bottomLeft: const Radius.circular(30.0),
                            bottomRight: const Radius.circular(30.0),
                            topRight: const Radius.circular(30.0))),
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          data["password"] = value;
                        });
                      },
                      obscureText: true,
                      cursorColor: Color(0xFFB0B9C0),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              color: Color(0xFFB0B9C0), fontFamily: 'poppins'),
                          labelStyle: TextStyle(
                              color: Color(0xFFB0B9C0), fontFamily: 'poppins'),
                          suffixIcon: Icon(Icons.https,
                              color: Color(0xFFB0B9C0), size: 22.0),
                          contentPadding: EdgeInsets.only(
                              left: 25.0, top: 10.0, bottom: 10.0, right: 35.0),
                          border: InputBorder.none,
                          hintText: 'Password'),
                    ),
                  ),
                  SizedBox(height: 15),
                  Align(
                      child: Text('Forgot Password ?',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontFamily: 'poppins'))),
                  SizedBox(height: 15),
                  Container(
                    width: MediaQuery.of(context).size.width - 60,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: hasLoginStarted
                        ? RaisedButton(
                            disabledColor:
                                Theme.of(context).primaryColor.withOpacity(0.8),
                            color: Theme.of(context).primaryColor,
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(50.0),
                            ),
                            onPressed: null,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                      height: 25,
                                      width: 25,
                                      child: CircularProgressIndicator(
                                          backgroundColor: Colors.white,
                                          valueColor: AlwaysStoppedAnimation<
                                                  Color>(
                                              Theme.of(context).primaryColor))),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Please Wait",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : RaisedButton(
                            color: Theme.of(context).primaryColor,
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(50.0),
                            ),
                            onPressed: () {

                            },
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}