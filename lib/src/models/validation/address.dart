import 'package:flutter/material.dart';

class AddressForm extends StatefulWidget {
  @override
  _AddressFormState createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  String address;
  @override
  Widget build(BuildContext context) {
    var validator = (String value){
            if(value.isEmpty){
              return 'Address is required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(labelText: 'Address'),
          validator: validator,
      onSaved: (String value){
        address = value;
      },
    );
  }
}