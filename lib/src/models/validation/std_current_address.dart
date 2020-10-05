import 'package:flutter/material.dart';

class CurrentAddressForm extends StatefulWidget {
  @override
  _CurrentAddressFormState createState() => _CurrentAddressFormState();
}

class _CurrentAddressFormState extends State<CurrentAddressForm> {
  String presentAddress;
  @override
  Widget build(BuildContext context) {
    var validator = (String value){
            if(value.isEmpty){
              return 'Present Address is required';
            }if(value.length < 4){
              return 'Minimum of 4 characters required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(
            labelText: 'Present Address',
            hintText: 'Current Address'),
          validator: validator,
      onSaved: (String value){
        presentAddress = value;
      },
    );
  }
}