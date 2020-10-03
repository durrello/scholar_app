import 'package:flutter/material.dart';

class Qualifications extends StatefulWidget {
  @override
  _QualificationsState createState() => _QualificationsState();
}

class _QualificationsState extends State<Qualifications> {
  int qualification = 1;

  //qualification function
  Widget buildQualification() {
    return Row(
      children: [
        Text("Qualifications"),
        Spacer(),
        DropdownButton(
            value: qualification,
            items: [
              DropdownMenuItem(
                child: Text("Bachelors Degree"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Nursing"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Medical Doctor"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("Pharmacist"),
                value: 4,
              ),
              DropdownMenuItem(
                child: Text("Chemist"),
                value: 5,
              ),
              DropdownMenuItem(
                child: Text("Yahoo Boy"),
                value: 6,
              ),
            ],
            onChanged: (value) {
              setState(() {
                qualification = value;
              });
            }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildQualification();
  }
}
