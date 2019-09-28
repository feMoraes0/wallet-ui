import 'package:flutter/material.dart';
import 'package:wallet/components/internal/appbarCustom.dart';
import 'package:wallet/components/internal/dateSelect.dart';
import 'package:wallet/components/internal/redButton.dart';
import 'package:wallet/components/internal/screen.dart';

class Pay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InternalScreen(
      appBar: AppbarCustom(text: "Pay"),
      body: Container(
        margin: EdgeInsets.only(top: 100.0),
        child: BodyTab(),
      ),
    );
  }
}

class BodyTab extends StatefulWidget {
  @override
  _BodyTabState createState() => _BodyTabState();
}

class _BodyTabState extends State<BodyTab> {
  int _tab = 1;

  void updateText(tab) {
    setState(() {
      this._tab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                          color: (this._tab == 1)
                              ? Color(0xffff2d55)
                              : Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            bottomLeft: Radius.circular(5.0),
                          ),
                          border:
                              Border.all(color: Color(0xffff2d55), width: 1.0)),
                      child: Text(
                        "Pay to an account",
                        style: TextStyle(
                          color: (this._tab == 1)
                              ? Colors.white
                              : Color(0xffff2d55),
                        ),
                      ),
                    ),
                    onTap: () {
                      this.updateText(1);
                    }),
                GestureDetector(
                    child: Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                          color: (this._tab == 2)
                              ? Color(0xffff2d55)
                              : Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                          ),
                          border:
                              Border.all(color: Color(0xffff2d55), width: 1.0)),
                      child: Text(
                        "Pay to a contact",
                        style: TextStyle(
                          color: (this._tab == 2)
                              ? Colors.white
                              : Color(0xffff2d55),
                        ),
                      ),
                    ),
                    onTap: () {
                      this.updateText(2);
                    }),
              ],
            ),
          ),
          (this._tab == 1) ? PayAccount() : PayContact(),
        ],
      ),
    );
  }
}

class PayContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 85.0),
      child: Column(
        children: <Widget>[
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
            margin: EdgeInsets.only(top: 40.0),
            child: Center(
              child: RedButton(
                text: "CONFIRM",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PayAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60.0),
      child: Column(
        children: <Widget>[
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
            padding: EdgeInsets.fromLTRB(25.0, 12.0, 0.0, 12.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      child: Text(
                        "To",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.78,
                          padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(width: 1.5, color: Colors.grey[500]),
                            ),
                          ),
                          child: Text(
                            "Sort Code",
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.78,
                          padding: EdgeInsets.symmetric(vertical: 13.0, horizontal: 10.0),
                          child: Text(
                            "Account Number",
                            style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
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
            margin: EdgeInsets.only(top: 40.0),
            child: Center(
              child: RedButton(
                text: "CONFIRM",
              ),
            ),
          ),
        ],
      ),
    );
  }
}




