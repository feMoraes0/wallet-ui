import 'package:flutter/material.dart';
import 'package:wallet/components/internal/appbarCustom.dart';
import 'package:wallet/components/internal/screen.dart';

class Transfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InternalScreen(
      appBar: AppbarCustom(text: "Transfer"),
      body: Container(
        padding: EdgeInsets.only(top: 60.0),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 170.0,
                    width: 80.0,
                    padding: EdgeInsets.only(top: 90.0),
                    decoration: BoxDecoration(
                      color: Color(0xffa505e8),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(7.0),
                        bottomRight: Radius.circular(7.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400],
                          blurRadius: 2.0,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                    child: Text(
                      "00",
                      style: TextStyle(
                        fontFamily: "OCR",
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.compare_arrows,
                    size: 140.0,
                    color: Colors.white,
                  ),
                  Container(
                    height: 170.0,
                    width: 80.0,
                    padding: EdgeInsets.only(top: 90.0, left: 46.0, right: 0),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Color(0xff08e2e8),
                          Color(0xff15e5f2),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7.0),
                        bottomLeft: Radius.circular(7.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400],
                          blurRadius: 2.0,
                          offset: Offset(-2.0, 2.0),
                        ),
                      ],
                    ),
                    child: Text(
                      "00",
                      style: TextStyle(
                        fontFamily: "OCR",
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "From",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "Select Account",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.grey[500],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 100.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[600],
                      size: 24.0,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "To",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "Select Account",
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.grey[500],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 75.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[600],
                      size: 24.0,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Amount",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "£0.00",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RedButton(text: "Now"),
                  DateSelect(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0),
              child: Center(
                child: RedButton(
                  text: "CONFIRM",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
        color: Colors.red,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            blurRadius: 2.0,
            offset: Offset(2.0, 2.0),
          ),
        ]
      ),
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
