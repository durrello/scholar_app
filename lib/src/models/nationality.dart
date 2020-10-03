import 'package:flutter/material.dart';

class Nationality extends StatefulWidget {
  @override
  _NationalityState createState() => _NationalityState();
}

class _NationalityState extends State<Nationality> {
    int nationality = 1;

//nationality function
  Widget buildNationality(){
    return Row(
      children: [
        Text("Nationality"), Spacer(),
        DropdownButton(
            value: nationality,
            items: [
              DropdownMenuItem(
                child: Text("Cameroonian"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Malian"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("Nigerian"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("American"),
                value: 4,
              ),
              DropdownMenuItem(
                child: Text("Asian"),
                value: 5,
              ),
              DropdownMenuItem(
                child: Text("Swedish"),
                value: 6,
              ),
            ],
            onChanged: (value) {
              setState(() {
                nationality = value;
              });
            }),

      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return buildNationality();
  }
}