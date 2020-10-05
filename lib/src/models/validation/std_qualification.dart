import 'package:flutter/material.dart';

class QualificationForm extends StatefulWidget {
  @override
  _QualificationFormState createState() => _QualificationFormState();
}

class _QualificationFormState extends State<QualificationForm> {
  String qualification;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Current Qualification'),
      // ignore: missing_return
      validator: (String value){
        if(value.isEmpty){
          return 'Qualification is needed is required';
        }
      },
      onSaved: (String value){
        qualification = value;
      },
    );
  }
}