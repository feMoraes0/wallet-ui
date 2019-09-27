import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final Widget box, footer;

  const Screen({Key key, @required this.box, this.footer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: size.height / 2,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromRGBO(102, 14, 218, 1.0),
                          Color.fromRGBO(234, 86, 253, 1.0),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: size.height / 2,
                    color: Color.fromRGBO(245, 245, 245, 1.0),
                  ),
                ],
              ),
              Center(
                child: this.box,
              ),
              (this.footer != null) ? this.footer : Container(),
            ],
          ),
        )
      ),
    );
  }
}
