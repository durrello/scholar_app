import 'package:flutter/material.dart';

class StateRegionForm extends StatefulWidget {
  @override
  _StateRegionFormState createState() => _StateRegionFormState();
}

class _StateRegionFormState extends State<StateRegionForm> {
  String stateRegion;
  @override
  Widget build(BuildContext context) {
    var validator = (String value){
            if(value.isEmpty){
              return 'State/Region is required';
            }if(value.length < 4){
              return 'Minimum of 4 characters required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(
            labelText: 'State or Region',
            hintText: 'Region'),
          validator: validator,
      onSaved: (String value){
        stateRegion = value;
      },
    );
  }
}