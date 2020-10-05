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
            }
          };
        return TextFormField(
          decoration: InputDecoration(labelText: 'Full Names'),
          validator: validator,
      onSaved: (String value){
        name = value;
      },
    );
  }
}