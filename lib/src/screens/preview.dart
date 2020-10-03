import 'package:flutter/material.dart';
import 'package:scholar_app/src/commons.dart';
import 'package:scholar_app/src/widgets/CustomHeader.dart';

class PreviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Application Preview"), backgroundColor: primary,),
      body: Container(
        child: ListView(
          children: [
            Container(
                margin: EdgeInsets.all(10),
                child: Center(
                  child: CustomHeader(text: "Preview of application in progress")
                ) ),

            ListTile(
              title: Text("Name"),
            )

          ],
        ),
      ),
    );
  }
}


//import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:hexcolor/hexcolor.dart';
//
//class PreviewScreen extends StatefulWidget {
//  //accepting data
//  String profileTitle;
//  PreviewScreen({this.profileTitle});
//  //
//  @override
//  _PreviewScreenState createState() => _PreviewScreenState(profileTitle);
//}
//
//class _PreviewScreenState extends State<PreviewScreen> {
//  //accepting data again
//  String profileTitle;
//  _PreviewScreenState({this.profileTitle});
//  //
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text("Application Preview"), backgroundColor: Hexcolor("#98C429"),),
//      body: Container(
//        child: ListView(
//          children: [
//            Container(
//                margin: EdgeInsets.all(10),
//                child: Text("Preview of application in progress", textAlign: TextAlign.center,)),
//
//            ListTile(
//              title: Text("Name"),
//            )
//
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//
//
