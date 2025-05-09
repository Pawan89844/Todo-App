import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String data;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  const AppText(this.data,
      {super.key, this.color, this.fontSize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: TextStyle(
            color: color, fontSize: fontSize, fontWeight: fontWeight));
  }
}
