import 'package:flutter/material.dart';
import 'package:wallet/components/internal/appbarCustom.dart';
import 'package:wallet/components/internal/screen.dart';

class Transfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InternalScreen(
      appBar: AppbarCustom(text: "Transfer"),
      body: Container(),
    );
  }
}
