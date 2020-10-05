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
            }
          };
        return TextFormField(
          decoration: InputDecoration(labelText: 'What was/is your role'),
          validator: validator,
      onSaved: (String value) {
        role = value;
      },
    );
  }
}