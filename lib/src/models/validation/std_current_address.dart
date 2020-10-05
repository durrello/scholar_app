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
            }
          };
        return TextFormField(
          decoration: InputDecoration(labelText: 'Present Address'),
          validator: validator,
      onSaved: (String value){
        presentAddress = value;
      },
    );
  }
}