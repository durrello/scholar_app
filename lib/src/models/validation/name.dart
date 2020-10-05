import 'package:flutter/material.dart';

class NameForm extends StatefulWidget {
  @override
  _NameFormState createState() => _NameFormState();
}

class _NameFormState extends State<NameForm> {
  String name;
  @override
  Widget build(BuildContext context) {
    var validator = (String value) {
              if (value.isEmpty) {
                return 'Name is required';
              }
              if (value.length < 4) {
                return 'Name must be atleast 4 characters';
              }
            };
        return TextFormField(
            decoration:
                InputDecoration(
                  labelText: 'Full Names', 
                  hintText: 'John Doe'),
            validator: validator,
        onSaved: (String value) {
          name = value;
        },
      );
  }
}