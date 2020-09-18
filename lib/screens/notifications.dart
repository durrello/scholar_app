import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NotificationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NotificationScreenState();
  }

}
class NotificationScreenState extends State<NotificationScreen> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Notifications"), backgroundColor: Hexcolor("#98C429"),),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
            padding: EdgeInsets.all(3),
            child: Column(
              children: [
                Column(
                  children: [
                    Align(
                        child: Text("From administration", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),),
                      alignment: Alignment.topLeft,
                    ),
                    Text("Your application was, with id number 000000000 has been received and is under processing, we will get back to you "),
                    Align(child: Text("Admission Team"), alignment: Alignment.centerRight,)
                  ],
                ),
                Divider(),

                Column(
                  children: [
                    Align(
                        child: Text("From administration", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),),
                      alignment: Alignment.topLeft,
                    ),
                    Text("Your application was, with id number 284748934 has been received but was incomplete, "
                        " You have less than 48hrs to rectify this else face the consequencieswe will get back to you"),
                    Align(child: Text("Admission Team"), alignment: Alignment.centerRight,) 
                  ],
                ),




              ],
            ),
          ),
        ],
      )
    );
  }

}



