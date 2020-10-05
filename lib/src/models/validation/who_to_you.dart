import 'package:flutter/material.dart';

class WhomToYouForm extends StatefulWidget {
  @override
  _WhomToYouFormState createState() => _WhomToYouFormState();
}

class _WhomToYouFormState extends State<WhomToYouForm> {
  String toWhom;
  @override
  Widget build(BuildContext context) {
    var validator = (String value){
            if(value.isEmpty){
              return 'Required';
            }if(value.length < 4){
              return 'Minimum of 4 characters required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(
            labelText: 'Who to you?',
            hintText: 'Mother'),
          validator: validator,
      onSaved: (String value){
        toWhom = value;
      },
    );
  }
}