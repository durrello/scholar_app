import 'package:flutter/material.dart';

//imported custom widgets and commons
import 'package:scholar_app/src/commons.dart';
import 'package:scholar_app/src/widgets/CustomHeader.dart';
import 'package:scholar_app/src/widgets/CustomText.dart';

//imported screens
import 'package:scholar_app/src/screens/app_form/personal_info.dart';


class ApplyScreen extends StatefulWidget {
  @override
  _ApplyScreenState createState() => _ApplyScreenState();
}

class _ApplyScreenState extends State<ApplyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Apply"), backgroundColor: primary,
      ),
      body:  Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Column (
                  children: [
                    CustomHeader(text: "Applications In Progress"),

                    Divider(),
                    ListTile(
                      title: CustomText(text: "Jonh Doe", weight: FontWeight.bold),
                      subtitle: Text("First Name: John \nLast Name: Doe"),
                      trailing: Icon(Icons.rotate_left, color: primary,),
                    ),
                  ],
                ),

                Divider(),

                FlatButton(
                    color: primary,
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
                  CustomHeader(text: "Completed Applications"),

                  Divider(),
                  ListTile(
                    title: Text("Jonh Doe", style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Text("First Name: John \nLast Name: Doe"),
                    trailing: Icon(Icons.delete, color: red),
                  ),
                ],
              ),

              ],
            ),
          ),
    );
  }
}
