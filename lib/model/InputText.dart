import 'package:flutter/material.dart';

class inputtext extends StatelessWidget {
  final String Inputtext;
  final Color color;
  final double fontSize;
  final  fontweight;

  const inputtext({Key? key, required this.Inputtext, required this.color, required this.fontSize, this.fontweight}) : super(key: key);@override
  Widget build(BuildContext context) {
    return Text(
      Inputtext,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontweight,
      ),
      softWrap: true,
    );
  }
}
