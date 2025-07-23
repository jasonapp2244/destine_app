import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  Color? color;
  CustomDivider({this.color});

  @override
  Widget build(BuildContext context) {
    return Divider(color: color);
  }
}
