import 'package:flutter/material.dart';

class CityForm extends StatefulWidget {
  @override
  _CityFormState createState() => _CityFormState();
}

class _CityFormState extends State<CityForm> {
  String city;
  @override
  Widget build(BuildContext context) {
    var validator = (String value){
            if(value.isEmpty){
              return 'City is required';
            }if(value.length < 6){
              return 'Minimum of 6 characters required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(
            labelText: 'City',
            hintText: 'City'
            ),
          validator: validator,
      onSaved: (String value){
        city = value;
      },
    );
  }
}