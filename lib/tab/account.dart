import 'package:flutter/material.dart';
import 'package:wallet/components/internal/appbarCustom.dart';
import 'package:wallet/components/internal/screen.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InternalScreen(
      appBar: AppbarCustom(text: "Account"),
      body: Container(
        margin: EdgeInsets.only(top: 60.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Container(
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffff2d55),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2.0,
                        color: Colors.grey[500],
                        offset: Offset(2.0, 2.0)),
                  ],
                ),
                child: Icon(
                  Icons.person,
                  size: 120.0,
                  color: Colors.white,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: Text(
                  "John Smith",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xffff2d55),
                  ),
                ),
              ),
            ),
            AccountRow(
              text: "Cards",
            ),
            AccountRow(
              text: "Settings",
            ),
            AccountRow(
              text: "Change Password",
            ),
            AccountRow(
              text: "About",
            ),
          ],
        ),
      ),
    );
  }
}

class AccountRow extends StatelessWidget {

  final String text;

  AccountRow({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            this.text,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey[600],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 23.0,
            color: Colors.grey[600],
          )
        ],
      ),
    );
  }
}

