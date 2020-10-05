import 'package:flutter/material.dart';

class EducationForm extends StatefulWidget {
  @override
  _EducationFormState createState() => _EducationFormState();
}

class _EducationFormState extends State<EducationForm> {
  String education;
  @override
  Widget build(BuildContext context) {
    var validator = (String value){
            if(value.isEmpty){
              return 'Education is required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(labelText: 'Education'),
          validator: validator,
      onSaved: (String value){
        education = value;
      },
    );
  }
}