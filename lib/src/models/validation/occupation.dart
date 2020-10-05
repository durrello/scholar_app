import 'package:flutter/material.dart';

class OccupationForm extends StatefulWidget {
  @override
  _OccupationFormState createState() => _OccupationFormState();
}

class _OccupationFormState extends State<OccupationForm> {
  String occupation;
  @override
  Widget build(BuildContext context) {
    var validator = (String value){
            if(value.isEmpty){
              return 'Occupation is required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(labelText: 'Occupation'),
          validator: validator,
      onSaved: (String value){
        occupation = value;
      },
    );
  }
}