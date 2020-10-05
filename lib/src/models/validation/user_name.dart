import 'package:flutter/material.dart';

class UserNameForm extends StatefulWidget {
  @override
  _UserNameFormState createState() => _UserNameFormState();
}

class _UserNameFormState extends State<UserNameForm> {
  String username;
  @override
  Widget build(BuildContext context) {
    var validator = (String value){
              if(value.isEmpty){
                return 'Username is required';
              }if(value.length < 8){
                return 'Please enter a valid username';
              }
            };
        return TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              hintText: 'johndoe1'),
            validator: validator,
        onSaved: (String value){
          username = value;
        },
      );
  }
}