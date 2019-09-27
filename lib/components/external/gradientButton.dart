import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {

  final String text;

  const GradientButton({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        this.text,
        style: TextStyle(color: Colors.white, fontSize: 18.0),
      ),
    );
  }
}
