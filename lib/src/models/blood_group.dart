import 'package:flutter/material.dart';

class BloodGroup extends StatefulWidget {
  @override
  _BloodGroupState createState() => _BloodGroupState();
}

class _BloodGroupState extends State<BloodGroup> {
  int bloodGroup = 1;

//blood group function
  Widget buildBloodGroup() {
    return Row(
      children: [
        Text("Blood Group"),
        Spacer(),
        DropdownButton(
            value: bloodGroup,
            items: [
              DropdownMenuItem(
                child: Text("Group A"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Group B"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Group AB"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("Group O"),
                value: 4,
              ),
            ],
            onChanged: (value) {
              setState(() {
                bloodGroup = value;
              });
            }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildBloodGroup();
  }
}
