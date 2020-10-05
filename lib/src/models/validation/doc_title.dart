import 'package:flutter/material.dart';

class DocumentTitleForm extends StatefulWidget {
  @override
  _DocumentTitleFormState createState() => _DocumentTitleFormState();
}

class _DocumentTitleFormState extends State<DocumentTitleForm> {
  String title;
  @override
  Widget build(BuildContext context) {
    var validator = (String value) {
            if (value.isEmpty && value.length < 6) {
              return 'Title is required';
            }if(value.length < 6){
              return 'Minimum of 6 characters required';
            }
          };
        return TextFormField(
          decoration: InputDecoration(
            labelText: 'Document Title',
            hintText: 'Document title'
            ),
          validator: validator,
      onSaved: (String value) {
        title = value;
      },
    );
  }
}