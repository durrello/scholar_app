import 'package:flutter/material.dart';

class PlaceOfBirthForm extends StatefulWidget {
  @override
  _PlaceOfBirthFormState createState() => _PlaceOfBirthFormState();
}

class _PlaceOfBirthFormState extends State<PlaceOfBirthForm> {
  String birthPlace;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Place of Birth',
        hintText: 'Place'),
      // ignore: missing_return
      validator: (String value){
        if(value.isEmpty){
          return 'Place of birth is required';
        }if(value.length < 4){
              return 'Minimum of 4 characters required';
            }
      },
      onSaved: (String value){
        birthPlace = value;
      },
    );
  }
}