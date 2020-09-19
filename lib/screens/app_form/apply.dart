import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scholar_app/screens/app_form/personal_info.dart';

class ApplyScreen extends StatefulWidget {
  @override
  _ApplyScreenState createState() => _ApplyScreenState();
}

class _ApplyScreenState extends State<ApplyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Apply"), backgroundColor: Hexcolor("#98C429"),
      ),
      body:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Column (
                  children: [
                    Text("Completed Applications",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

                    Divider(),
                    ListTile(
                      title: Text("Durrell Gemuh", style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text("First Name: Durrell \nLast Name: Gemuh"),
                      trailing: Icon(Icons.rotate_left, color: Hexcolor("#98C429"),),
                    ),

                    ListTile(
                      title: Text("Durrell Gemuh", style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text("First Name: Durrell \nLast Name: Gemuh"),
                      trailing: Icon(Icons.rotate_left, color: Hexcolor("#98C429"),),
                    ),
                  ],
                ),

                Divider(),

                FlatButton(
                    color: Hexcolor("#98C429"),
                    onPressed: () => {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => PersonalInfoScreen()))
                    },
                    child: Row(
                      children: [
                        Spacer(),
                        Text("New Application",),
                        Spacer(),
                      ],
                    )
                ),

              Divider(),

              Column (
                children: [
                  Text("Completed Applications",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

                  Divider(),
                  ListTile(
                    title: Text("Durrell Gemuh", style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text("First Name: Durrell \nLast Name: Gemuh"),
                    trailing: Icon(Icons.delete, color: Colors.redAccent),
                  ),

                  ListTile(
                    title: Text("Durrell Gemuh", style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text("First Name: Durrell \nLast Name: Gemuh"),
                    trailing: Icon(Icons.delete, color: Colors.redAccent),
                  ),

                  ListTile(
                    title: Text("Durrell Gemuh", style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text("First Name: Durrell \nLast Name: Gemuh"),
                    trailing: Icon(Icons.delete, color: Colors.redAccent),
                  ),
                ],
              ),

              ],
            ),
          ),
    );
  }
}
