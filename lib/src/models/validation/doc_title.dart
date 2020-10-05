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
            }
          };
        return TextFormField(
          decoration: InputDecoration(labelText: 'Document Title'),
          validator: validator,
      onSaved: (String value) {
        title = value;
      },
    );
  }
}