import 'package:flutter/material.dart';

class GuardianNameForm extends StatefulWidget {
  @override
  _GuardianNameFormState createState() => _GuardianNameFormState();
}

class _GuardianNameFormState extends State<GuardianNameForm> {
  String name;
  @override
  Widget build(BuildContext context) {
    var validator = (String value){
            if(value.isEmpty && value.length < 6){
              return 'Full Names is required';
            }if(value.length < 4){
              return 'Minimum of 4 characters required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(
            labelText: 'Full Names',
            hintText: 'John Doe',
            ),
          validator: validator,
      onSaved: (String value){
        name = value;
      },
    );
  }
}