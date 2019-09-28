import 'package:flutter/material.dart';

class AppbarCustom extends StatelessWidget {

  final String text;

  AppbarCustom({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.arrow_back_ios,
            size: 27.0,
            color: Colors.white,
          ),
          Text(
            this.text,
            style: TextStyle(
              fontSize: 21.0,
              fontWeight: FontWeight.w600,
              color: Colors.redAccent,
            ),
          ),
          Icon(
            Icons.notifications_none,
            size: 27.0,
            color: Colors.grey[600],
          ),
        ],
      ),
    );
  }
}
