import 'package:flutter/material.dart';

class DateSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 35.0, top: 9.0, right: 10.0, bottom: 9.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 2.0,
              offset: Offset(2.0, 2.0),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Select a date",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey[600],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 25,
            color: Colors.grey[500],
          )
        ],
      ),
    );
  }
}