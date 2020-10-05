import 'package:flutter/material.dart';

class PhoneNumberForm extends StatefulWidget {
  @override
  _PhoneNumberFormState createState() => _PhoneNumberFormState();
}

class _PhoneNumberFormState extends State<PhoneNumberForm> {
  int phone;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(labelText: 'Enter Phone Number',),
        keyboardType: TextInputType.phone,
        // ignore: missing_return
        validator: (String value){
          if(value.isEmpty){
            return 'Phone Number is required';
          } if(value.length < 9){
            return 'Please enter a valid number';
          }if(value.length > 9){
            return 'Please enter a valid number';
          }
        },
        onSaved: (String value){
          phone = value as int;
        },
      );
  }
}