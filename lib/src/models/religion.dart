import 'package:flutter/material.dart';

class Religion extends StatefulWidget {
  @override
  _ReligionState createState() => _ReligionState();
}

class _ReligionState extends State<Religion> {
  int religion = 1;

  //religion function
  Widget buildReligion() {
    return Row(
      children: [
        Text("Religion"),
        Spacer(),
        DropdownButton(
            value: religion,
            items: [
              DropdownMenuItem(
                child: Text("Christianity"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Islam"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Hinduism"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("Buddhism"),
                value: 4,
              ),
              DropdownMenuItem(
                child: Text("Judaism"),
                value: 5,
              ),
              DropdownMenuItem(
                child: Text("Sikhism"),
                value: 6,
              ),
            ],
            onChanged: (value) {
              setState(() {
                religion = value;
              });
            }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildReligion();
  }
}
