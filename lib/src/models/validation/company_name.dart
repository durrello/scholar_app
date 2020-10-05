import 'package:flutter/material.dart';

class CompanyNameForm extends StatefulWidget {
  @override
  _CompanyNameFormState createState() => _CompanyNameFormState();
}

class _CompanyNameFormState extends State<CompanyNameForm> {
  String company;
  @override
  Widget build(BuildContext context) {
    var validator2 = (String value) {
            if (value.isEmpty && value.length < 6) {
              return 'Company is required';
            }if(value.length < 6){
              return 'Minimum of 6 characters required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(
            labelText: 'Company',
            hintText: 'Company name'
            ),
          validator: validator2,
      onSaved: (String value) {
        company = value;
      },
    );
  }
}