import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Connect_with extends StatefulWidget {
  @override
  _Connect_withState createState() => _Connect_withState();
}

class _Connect_withState extends State<Connect_with> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notifications"), backgroundColor: Hexcolor("#98C429"),),
      body: Container(
        child: Text("connect with"),
      ),
    );
  }
}
