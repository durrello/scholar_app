import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PreviewScreen extends StatefulWidget {
  @override
  _PreviewScreenState createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Application Preview"), backgroundColor: Hexcolor("#98C429"),),
      body: Container(
        child: Text("Preview of status/level/percentage complete of the ongoing application "),
      ),
    );
  }
}



