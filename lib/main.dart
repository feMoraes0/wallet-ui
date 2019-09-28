import 'package:flutter/material.dart';
import 'package:wallet/screen/home.dart';
import 'package:wallet/screen/login.dart';
import 'package:wallet/screen/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      routes: <String, WidgetBuilder> {
        "/login": (BuildContext context) => Login(), // unused
        "/register": (BuildContext context) => Register(),
        "/home": (BuildContext context) => Home(),
      },
      theme: ThemeData(fontFamily: "SF Pro"),
      debugShowCheckedModeBanner: false,
    );
  }
}
