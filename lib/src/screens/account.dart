import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scholar_app/src/commons.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Account"), backgroundColor: primary,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.alternate_email, color: primary,),
              title: Text("Email"),
              subtitle:  TextField(
                decoration: InputDecoration(
                    hintText: 'gemuhd@gmail.com'
                ),
              ),
            ),

            Divider(),

            ListTile(
              leading: Icon(Icons.person, color: primary,),
              title: Text("Username"),
              subtitle:  TextField(
                decoration: InputDecoration(
                    hintText: 'durrello'
                ),
              ),
            ),

            Divider(),
            Divider(),

            ListTile(
              leading: Icon(Icons.lock_open, color: primary,),
              title: Text("Old password"),
              subtitle:  TextField(
                decoration: InputDecoration(
                    hintText: 'Enter old password'
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.lock_outline, color: primary,),
              title: Text("New password"),
              subtitle:  TextField(
                decoration: InputDecoration(
                    hintText: 'Enter new password'
                ),
              ),
              trailing: Icon(Icons.remove_red_eye),
            ),

            ListTile(
              leading: Icon(Icons.lock_outline, color: primary,),
              title: Text("Confirm password"),
              subtitle:  TextField(
                decoration: InputDecoration(
                    hintText: 'Re-enter new password'
                ),
              ),
              trailing: Icon(Icons.remove_red_eye),
            ),

            Divider(),

            FlatButton(
                color: primary,
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
