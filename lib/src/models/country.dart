import 'package:flutter/material.dart';

class Country extends StatefulWidget {
  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {
  int country = 1;
  //country function
  Widget buildCountry() {
    return Row(
      children: [
        Text("Country"),
        Spacer(),
        DropdownButton(
            value: country,
            items: [
              DropdownMenuItem(
                child: Text("Cameroon"),
                value: 1,
              ),
              DropdownMenuItem(
                child: Text("Nigeria"),
                value: 2,
              ),
              DropdownMenuItem(
                child: Text("France"),
                value: 3,
              ),
              DropdownMenuItem(
                child: Text("China"),
                value: 4,
              ),
              DropdownMenuItem(
                child: Text("Italy"),
                value: 5,
              ),
              DropdownMenuItem(
                child: Text("Sweden"),
                value: 6,
              ),
            ],
            onChanged: (value) {
              setState(() {
                country = value;
              });
            }),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildCountry();
  }
}
