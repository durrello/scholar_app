import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"), backgroundColor: Hexcolor("#98C429"),),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person, color: Hexcolor("#98C429"),),
              title: Text("Name"),
              subtitle:  TextField(
                decoration: InputDecoration(
                    hintText: 'Durrell Gemuh'
                ),
              ),
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.alternate_email, color: Hexcolor("#98C429"),),
              title: Text("Email"),
              subtitle:  TextField(
                decoration: InputDecoration(
                    hintText: 'gemuhd@gmail.com'
                ),
              ),
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.public, color: Hexcolor("#98C429"),),
              title: Text("Website"),
              subtitle:  TextField(
                decoration: InputDecoration(
                    hintText: 'www.me.com'
                ),
              ),
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.person_pin_circle, color: Hexcolor("#98C429"),),
              title: Text("Address"),
              subtitle:  TextField(
                decoration: InputDecoration(
                    hintText: 'Buea, Cameroon'
                ),
              ),
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.timelapse, color: Hexcolor("#98C429"),),
              title: Text("Time Zone"),
              subtitle:  TextField(
                decoration: InputDecoration(
                    hintText: 'implement timezone picker'
                ),
              ),
             trailing: Icon(Icons.arrow_drop_down),
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.camera, color: Hexcolor("#98C429"),),
              title: Text("Gravatar email"),
              subtitle:  TextField(
                decoration: InputDecoration(
                    hintText: 'Change your avatar'
                ),
              ),
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.account_box, color: Hexcolor("#98C429"),),
              title: Text("Bio"),
              subtitle:  TextField(
                decoration: InputDecoration(
                    hintText: ' Brief summary about you'
                ),
              ),
            ),


            Divider(),

            FlatButton(
              color: Hexcolor("#98C429"),
                onPressed: () {
                  return  Alert(
                      context: context,
                      title: "Alert",
                      desc: "Clicking here takes you to sign/login with facebook, implement using firebase, or facebook auth",
                      buttons: [
                        DialogButton(child: Text("Continue"), onPressed: () {Navigator.pop(context);}),
                        DialogButton(child: Text("Cancel"), onPressed: () {Navigator.pop(context);})
                      ]
                  ).show();
                },
                child: Row(
                  children: [
                   Spacer(),
                    Text("SAVE",),
                    Spacer(),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
