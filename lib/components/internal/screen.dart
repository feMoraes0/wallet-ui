import 'package:flutter/material.dart';
import 'package:wallet/components/internal/appbarCustom.dart';

import 'package:wallet/data/data.dart';

class InternalScreen extends StatelessWidget {

  final Widget appBar, body;

  InternalScreen({this.appBar, @required this.body});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color.fromRGBO(245, 245, 245, 1.0),
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: this.body
            ),
            Positioned(
              top: 0,
              left: 0,
              child: this.appBar,
            )
          ],
        ),
      ),
    );
  }
}