import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  @override
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  int gender = 1;

  //gender function
  Widget buildGender(){
    return Row(
      children: [
        Text("Gender"), Spacer(),
        DropdownButton(
            value: gender,
            items: [
              DropdownMenuItem(
                child: Text("Male"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Female"),
                value: 2,
              ),
            ],
            onChanged: (value) {
              setState(() {
                gender = value;
              });
            }),

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildGender();
  }
}