import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notifications"), backgroundColor: Hexcolor("#98C429"),),
      body: Container(
        child: Text("profile"),
      ),
    );
  }
}
