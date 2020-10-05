import 'package:flutter/material.dart';

class RoleForm extends StatefulWidget {
  @override
  _RoleFormState createState() => _RoleFormState();
}

class _RoleFormState extends State<RoleForm> {
  String role;
  @override
  Widget build(BuildContext context) {
    var validator = (String value) {
            if (value.isEmpty) {
              return 'Role is Required';
            }if(value.length < 4){
            return 'Role must be atleast 4 characters';
          }
          };
        return TextFormField(
          decoration: InputDecoration(
            labelText: 'What was/is your role',
            hintText: 'Manager'),
          validator: validator,
      onSaved: (String value) {
        role = value;
      },
    );
  }
}