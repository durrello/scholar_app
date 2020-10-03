import 'package:flutter/material.dart';

//imported custom widgets and commons
import 'package:scholar_app/src/commons.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;
  

  CustomText({@required this.text, this.size, this.color, this.weight, TextAlign textAlign, });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size ?? 16, fontWeight: weight ?? FontWeight.normal, color: color ?? black),
    );
  }
}
