import 'package:flutter/material.dart';

class FirstNameForm extends StatefulWidget {
  @override
  _FirstNameFormState createState() => _FirstNameFormState();
}

class _FirstNameFormState extends State<FirstNameForm> {
  String firstName;
  @override
  Widget build(BuildContext context) {
    var validator = (String value){
            if(value.isEmpty){
              return 'First name is required';
            }if(value.length < 4){
              return 'Minimum of 4 characters required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(
            labelText: 'First Name',
            hintText: 'John'),
          validator: validator,
      onSaved: (String value){
        firstName = value;
      },
    );
  }
}