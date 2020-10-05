import 'package:flutter/material.dart';

class MotherTongueForm extends StatefulWidget {
  @override
  _MotherTongueFormState createState() => _MotherTongueFormState();
}

class _MotherTongueFormState extends State<MotherTongueForm> {
  String motherTongue;
  @override
  Widget build(BuildContext context) {
    var validator = (String value){
            if(value.isEmpty){
              return 'Mother Tongue is required';
            }if(value.length < 4){
              return 'Minimum of 4 characters required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(
            labelText: 'Mother Tongue',
            hintText: 'Bayangian'),
          validator: validator,
      onSaved: (String value){
        motherTongue = value;
      },
    );
  }
}