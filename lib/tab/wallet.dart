import 'package:flutter/material.dart';

import 'package:wallet/data/data.dart';

class Wallet extends StatelessWidget {
  List<Widget> renderCreditCards() {
    return List<Widget>.generate(creditCards.length, (index) {
      var data = creditCards[index];
      var f = flag[data["flag"]]["img"];
      var primaryColor = flag[data["flag"]]["first_color"];
      var secondaryColor = flag[data["flag"]]["second_color"];
      return CreditCard(
        primaryColor: Color(int.parse(primaryColor)),
        secondaryColor: Color(int.parse(secondaryColor)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 60.0),
              child: Column(
                children: renderCreditCards(),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: AppbarCustom(),
          )
        ],
      ),
    );
  }
}

class AppbarCustom extends StatelessWidget {
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
            "Wallet",
            style: TextStyle(
              fontSize: 21.0,
              fontWeight: FontWeight.w600,
              color: Colors.red,
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

class CreditCard extends StatelessWidget {
  final String flag, first4, last4;
  final Color primaryColor, secondaryColor;

  const CreditCard({
    Key key,
    this.flag,
    this.first4,
    this.last4,
    this.primaryColor,
    this.secondaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width - 40.0,
      height: 300.0,
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            this.secondaryColor,
            this.primaryColor,
          ])),
    );
  }
}
