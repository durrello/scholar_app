import 'package:flutter/material.dart';

class LastNameForm extends StatefulWidget {
  @override
  _LastNameFormState createState() => _LastNameFormState();
}

class _LastNameFormState extends State<LastNameForm> {
  String middleName;
  @override
  Widget build(BuildContext context) {
    var validator = (String value){
            if(value.isEmpty){
              return 'Last name is required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(labelText: 'Last Name'),
          validator: validator,
      onSaved: (String value){
        middleName = value;
      },
    );
  }
}