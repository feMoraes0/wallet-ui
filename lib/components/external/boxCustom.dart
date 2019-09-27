import 'package:flutter/material.dart';

class BoxCustom extends StatelessWidget {

  final double width, heigth;
  final Widget child;

  const BoxCustom({Key key, this.width, this.heigth, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.heigth,
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
      child: this.child,
    );
  }
}
