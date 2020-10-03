import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int profile = 1;

  Widget buildProfile() {
    return Row(
      children: [
        Text("Profile"),
        Spacer(),
        DropdownButton(
            value: profile,
            items: [
              DropdownMenuItem(
                child: Text("Profile A"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Profile B"),
                value: 2,
              ),
            ],
            onChanged: (value) {
              setState(() {
                profile = value;
              });
            }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildProfile();
  }
}
