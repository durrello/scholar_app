import 'package:flutter/material.dart';

class PasswordForm extends StatefulWidget {
  @override
  _PasswordFormState createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  String password;
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: '********'),
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        // ignore: missing_return
        validator: (String value){
          if(value.isEmpty){
            return 'Password is required';
          }if(value.length < 8){
            return 'Password must be atleast 8 characters';
          }
        },
        onSaved: (String value){
          password = value;
        },
      );
  }
}