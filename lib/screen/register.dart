import 'package:flutter/material.dart';
import 'package:wallet/components/external/boxCustom.dart';
import 'package:wallet/components/external/gradientButton.dart';
import 'package:wallet/components/external/screen.dart';
import 'package:wallet/screen/login.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Screen(
      box: BoxCustom(
        width: size.width - 70.0,
        heigth: size.height - 240.0,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Full Name",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(155, 155, 155, 1.0),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(155, 155, 155, 1.0),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(155, 155, 155, 1.0),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(155, 155, 155, 1.0),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(155, 155, 155, 1.0),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(155, 155, 155, 1.0),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 65.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(155, 155, 155, 1.0),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(155, 155, 155, 1.0),
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: GradientButton(text: "SIGN UP"),
            ),
            GestureDetector(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "ALREADY have an account?",
                      style: TextStyle(
                        fontSize: 12.5,
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      " Press here to Login",
                      style: TextStyle(
                        fontSize: 12.5,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
