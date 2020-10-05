import 'package:flutter/material.dart';

class WorkDescForm extends StatefulWidget {
  @override
  _WorkDescFormState createState() => _WorkDescFormState();
}

class _WorkDescFormState extends State<WorkDescForm> {
  String wordDesc;
  @override
  Widget build(BuildContext context) {
    var validator = (String value) {
            if (value.isEmpty) {
              return 'Description is required';
            }if (value.length < 50) {
              return 'Description in not less than 50 characters';
            }
          };
        return TextFormField(
          decoration: InputDecoration(
            labelText: 'Work description',
            hintText: 'Please describe your role in not less than 50 characters',
            ),
          validator: validator,
      onSaved: (String value) {
        wordDesc = value;
      },
    );
  }
}