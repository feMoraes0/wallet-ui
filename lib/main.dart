import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: size.height / 2,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromRGBO(102, 14, 218, 1.0),
                      Color.fromRGBO(234, 86, 253, 1.0),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height / 2,
                color: Color.fromRGBO(245, 245, 245, 1.0),
              ),
            ],
          ),
          Center(
            child: Container(
              width: size.width - 70.0,
              height: size.height - 420.0,
              padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400],
                    blurRadius: 4.0,
                    offset: Offset(0, 3.0),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(155, 155, 155, 1.0),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(155, 155, 155, 1.0),
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 65.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(155, 155, 155, 1.0),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(155, 155, 155, 1.0),
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 60.0,
                        vertical: 8.0,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          colors: [
                            Color.fromRGBO(234, 86, 253, 1.0),
                            Color.fromRGBO(252, 190, 115, 1.0),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                            fontSize: 12.5,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          " Press here to Sign Up",
                          style: TextStyle(
                              fontSize: 12.5,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 35.0,
            child: Container(
              height: 208.0,
              width: size.width - 70.0,
              child: Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 2,
                          width: (size.width - 102.0) / 2,
                          color: Colors.grey[300],
                          margin: EdgeInsets.only(right: 5.0),
                        ),
                        Text(
                          "OR",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[300],
                          ),
                        ),
                        Container(
                          height: 2,
                          width: (size.width - 102.0) / 2,
                          color: Colors.grey[300],
                          margin: EdgeInsets.only(left: 5.0),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                      child: Text(
                        "Login with Touch ID",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.fingerprint,
                      size: 60.0,
                      color: Color.fromRGBO(234, 86, 253, 0.5),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
