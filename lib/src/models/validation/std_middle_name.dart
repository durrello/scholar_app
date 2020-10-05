import 'package:flutter/material.dart';

class MiddleNameForm extends StatefulWidget {
  @override
  _MiddleNameFormState createState() => _MiddleNameFormState();
}

class _MiddleNameFormState extends State<MiddleNameForm> {
  String middleName;
  @override
  Widget build(BuildContext context) {
    var validator = (String value){
            if(value.isEmpty){
              return 'Middle name is required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(labelText: 'Middle Name'),
          validator: validator,
      onSaved: (String value){
        middleName = value;
      },
    );
  }
}