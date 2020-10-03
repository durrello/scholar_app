import 'package:flutter/material.dart';

class Programs extends StatefulWidget {
  @override
  _ProgramsState createState() => _ProgramsState();
}

class _ProgramsState extends State<Programs> {

  int program = 1;


  Widget buildPrograms() {
    return Row(
      children: [
        Text("Program"),
        Spacer(),
        DropdownButton(
            value: program,
            items: [
              DropdownMenuItem(
                child: Text("Computer Engineering"),
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
                program = value;
              });
            }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildPrograms();
  }
}
