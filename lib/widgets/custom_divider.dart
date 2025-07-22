import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  final double thickness;
  final Color lineColor;
  final String text;
  final TextStyle? textStyle;
  final double spacing;

  const OrDivider({
    Key? key,
    this.thickness = 1,
    this.lineColor = Colors.grey,
    this.text = 'OR',
    this.textStyle,
    this.spacing = 14,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(color: lineColor, thickness: thickness, height: 0),
        ),
        SizedBox(width: spacing),
        Text(
          text,
          style:
              textStyle ??
              TextStyle(
                color: Color(0xff0F1011),
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
        ),
        SizedBox(width: spacing),
        Expanded(
          child: Divider(color: lineColor, thickness: thickness, height: 0),
        ),
      ],
    );
  }
}
