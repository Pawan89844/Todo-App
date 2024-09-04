import 'package:flutter/material.dart';

class AppBoldText extends StatelessWidget {
  final String data;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const AppBoldText(this.data,
      {super.key,
      this.color,
      this.fontSize = 18.0,
      this.fontWeight = FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: TextStyle(
            color: color, fontSize: fontSize, fontWeight: fontWeight));
  }
}
