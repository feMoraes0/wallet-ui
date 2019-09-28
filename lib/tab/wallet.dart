import 'package:flutter/material.dart';
import 'package:wallet/components/internal/appbarCustom.dart';
import 'package:wallet/components/internal/screen.dart';

import 'package:wallet/data/data.dart';

class Wallet extends StatelessWidget {
  List<Widget> renderCreditCards() {
    return List<Widget>.generate(creditCards.length, (index) {
      var data = creditCards[index];
      var imgFlag = flag[data["flag"]]["img"];
      var primaryColor = flag[data["flag"]]["first_color"];
      var secondaryColor = flag[data["flag"]]["second_color"];
      var firstNumbers = data["first_numbers"];
      var secondNumbers = data["last_numbers"];
      return CreditCard(
        first4: firstNumbers,
        last4: secondNumbers,
        flag: imgFlag,
        primaryColor: Color(int.parse(primaryColor)),
        secondaryColor: Color(int.parse(secondaryColor)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return InternalScreen(
      appBar: AppbarCustom(text: "Wallet"),
      body: Container(
        margin: EdgeInsets.only(top: 60.0, bottom: 30.0),
        child: Column(
          children: renderCreditCards(),
        ),
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
      height: 210.0,
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            this.secondaryColor,
            this.primaryColor,
          ],
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 5.0,
            left: 10.0,
            child: Container(
              width: 70.0,
              height: 25.0,
              child: Center(
                child: ClipRect(
                  child: Image.network(
                    this.flag,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              this.first4 + " **** **** " + this.last4,
              style: TextStyle(
                fontFamily: "OCR",
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
