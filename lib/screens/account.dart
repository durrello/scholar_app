import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notifications"), backgroundColor: Hexcolor("#98C429"),),
      body: Container(
        child: Text("account"),
      ),
    );
  }
}
