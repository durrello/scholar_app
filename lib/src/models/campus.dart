import 'package:flutter/material.dart';

class Campus extends StatefulWidget {
  @override
  _CampusState createState() => _CampusState();
}

class _CampusState extends State<Campus> {
  int campus = 1;
  Widget buildCampus() {
    return Row(
      children: [
        Text("Campus"),
        Spacer(),
        DropdownButton(
            value: campus,
            items: [
              DropdownMenuItem(
                child: Text("Campus A"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Campus B"),
                value: 2,
              ),
            ],
            onChanged: (value) {
              setState(() {
                campus = value;
              });
            }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(10, 5, 10, 10), 
        child: buildCampus());
  }
}
