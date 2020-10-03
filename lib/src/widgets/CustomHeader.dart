import 'package:flutter/material.dart';
import 'package:scholar_app/src/commons.dart';

class CustomHeader extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;
  

  CustomHeader({@required this.text, this.size, this.color, this.weight, TextAlign textAlign, });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size ?? 17, fontWeight: weight ?? FontWeight.bold, color: color ?? black),
    );
  }
}
