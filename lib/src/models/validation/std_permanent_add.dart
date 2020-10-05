import 'package:flutter/material.dart';

class PermanentAddressForm extends StatefulWidget {
  @override
  _PermanentAddressFormState createState() => _PermanentAddressFormState();
}

class _PermanentAddressFormState extends State<PermanentAddressForm> {
  String permanentAddress;
  @override
  Widget build(BuildContext context) {
    var validator = (String value){
            if(value.isEmpty){
              return 'Permanent Address is required';
            }if(value.length < 4){
              return 'Minimum of 4 characters required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(
            labelText: 'Permanent Address',
            hintText: 'Address'),
          validator: validator,
      onSaved: (String value){
        permanentAddress = value;
      },
    );
  }
}