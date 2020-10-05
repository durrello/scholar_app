import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//imported 3rd party packages
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scholar_app/src/commons.dart';

//imported screens
import 'package:scholar_app/src/screens/home/home.dart';

class RetrivePasswordScreen extends StatefulWidget {
  //getting data from sign up screen
  @override
  _RetrivePasswordState createState() {
    return _RetrivePasswordState();
  }
}

class _RetrivePasswordState extends State<RetrivePasswordScreen> {
  String email;
  String code;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildEmailField() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Email',
        ),
        keyboardType: TextInputType.emailAddress,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Email is required';
          }
          if (!RegExp(
                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
              .hasMatch(value)) {
            return 'Please Enter a valid Email';
          }
          return null;
        },
        onSaved: (String value) {
          email = value;
        },
        onChanged: (text) {
          email = text;
        },
      ),
    );
  }

  Widget verify() {
    var validator = (String value) {
      // ignore: missing_return
      if (value.isEmpty) {
        return 'Code is require';
      }
      if (value.length < 6) {
        return 'Enter a valid code';
      }
      if (value.length > 6) {
        return 'Enter a valid code';
      }
    };
    Alert(
      context: context,
      title: "Enter Verification code",
      content: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Code", border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              validator: validator,
              onSaved: (String value) {
                code = value;
              },
            ),
          ],
        ),
      ),
      buttons: [
        DialogButton(
            child: Text("Verify"),
            onPressed: () {
              if (!_formkey.currentState.validate()) {
              } else {
                _formkey.currentState.save();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen()));
              }
            }),
      ],
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: ListView(
          shrinkWrap: true,
          children: [
            Row(
              children: [
                Spacer(),
                Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                  width: 100,
                ),
                Spacer(),
              ],
            ),
            Divider(),
            Container(
              alignment: Alignment.center,
              child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildEmailField(),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: RaisedButton(
                          //color: grey,
                          onPressed: () {
                            if (!_formkey.currentState.validate()) {
                            } else {
                              return verify();
                            }
                          },
                          child: Text("SUBMIT",
                              style: TextStyle(color: green, fontSize: 16)),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        )),
      ),
    );
  }
}
