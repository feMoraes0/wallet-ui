import 'package:flutter/material.dart';

class RedButton extends StatelessWidget {
  final String text;

  RedButton({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 45.0,
      ),
      decoration: BoxDecoration(
          color: Color(0xffff2d55),
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400],
              blurRadius: 2.0,
              offset: Offset(2.0, 2.0),
            ),
          ]),
      child: Text(
        this.text,
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),
      ),
    );
  }
}