import 'package:flutter/material.dart';

//imported custom widgets and commons
import 'package:scholar_app/src/commons.dart';

class NotificationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NotificationScreenState();
  }

}
class NotificationScreenState extends State<NotificationScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notifications"), backgroundColor: primary,),
      body: ListView(
        children: [
          ListTile(
              //leading: Text("From administration", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),),
      title: Text("Admission Team", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),),
      subtitle: Text("Your application was, with id number 000000000 has been received and is under processing, we will get back to you ", style: TextStyle(fontWeight: FontWeight.bold, color: black),),
            trailing: Icon(Icons.markunread),
                     ),

                Divider(),

          ListTile(
            title: Text("Admission Team", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),),
               subtitle:  Text("Your application was, with id number 284748934 has been received but was incomplete, "
                   " You have less than 48hrs to rectify this else face the consequencies we will get back to you" , style: TextStyle(fontWeight: FontWeight.bold, color: black),),
            trailing: Icon(Icons.markunread),
          ),

          Divider(),

          ListTile(
            //leading: Text("From administration", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),),
            title: Text("Admission Team", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),),
            subtitle: Text("Your application was, with id number 000000000 has been received and is under processing, we will get back to you ", style: TextStyle(fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.markunread),
          ),

          Divider(),

          ListTile(
            // Text("From administration", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),),
            title: Text("Admission Team"),
            subtitle:  Text("Your application was, with id number 284748934 has been received but was incomplete, "
                " You have less than 48hrs to rectify this else face the consequencies we will get back to you"),
            trailing: Icon(Icons.done_all),
          ),

          Divider(),

          ListTile(
            //leading: Text("From administration", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),),
            title: Text("Admission Team", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: black),),
            subtitle: Text("Your application was, with id number 000000000 has been received and is under processing, we will get back to you ", style: TextStyle(fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.markunread),
          ),

          Divider(),

          ListTile(
            // Text("From administration", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,),),
            title: Text("Admission Team"),
            subtitle:  Text("Your application was, with id number 284748934 has been received but was incomplete, "
                " You have less than 48hrs to rectify this else face the consequencies we will get back to you"),
            trailing: Icon(Icons.done_all),
          ),

          Divider(),
              ],
            ),
          );
  }

}



