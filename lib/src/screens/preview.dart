import 'package:flutter/material.dart';

//imported custom widgets and commons
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