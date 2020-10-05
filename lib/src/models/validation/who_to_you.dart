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
            }
          };
        return TextFormField(
          decoration: InputDecoration(labelText: 'Who to you?'),
          validator: validator,
      onSaved: (String value){
        toWhom = value;
      },
    );
  }
}