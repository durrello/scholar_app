import 'package:flutter/material.dart';

class ProfileTilteForm extends StatefulWidget {
  @override
  _ProfileTilteFormState createState() => _ProfileTilteFormState();
}

class _ProfileTilteFormState extends State<ProfileTilteForm> {
  String profileTitle;
  @override
  Widget build(BuildContext context) {
    var validator = (String value){
            if(value.isEmpty){
              return 'Profile Title is required';
            }if(value.length < 4){
              return 'Minimum of 4 characters required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(
            labelText: 'Profile Title',
            hintText: ''),
          validator: validator,
      onSaved: (String value){
        profileTitle = value;
      },
    );
  }
}