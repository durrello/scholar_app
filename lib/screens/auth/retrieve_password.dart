import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scholar_app/screens/home/home.dart';
import 'package:scholar_app/screens/auth/signup.dart';

class RetrivePasswordScreen extends StatefulWidget {
  //getting data from sign up screen
  @override
  _RetrivePasswordState createState() {
    return _RetrivePasswordState();
  }
}

class _RetrivePasswordState extends State<RetrivePasswordScreen> {
  String _email;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildEmailField() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: TextFormField(
        decoration:
            InputDecoration(labelText: 'Email', border: OutlineInputBorder()),
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
          _email = value;
        },
        onChanged: (text) {
          _email = text;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                        child: FlatButton(
                          color: Colors.grey,
                          splashColor: Hexcolor("#98C429"),
                          onPressed: () {
                            if (!_formkey.currentState.validate()) {
                              Scaffold.of(context).showSnackBar(SnackBar(
                                  content: Text("Successfully retrieved password")));
                            } else {
                              _formkey.currentState.save();
                              return Alert(
                                context: context,
                                title: "Enter Verification code",
                                buttons: [
                                  DialogButton(
                                      child: Text("Verify"),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder:
                                                    (BuildContext context) =>
                                                        HomeScreen()));
                                      }),
                                ],
                                content: Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: InputDecoration(
                                            labelText: "Code",
                                            border: OutlineInputBorder()),
                                        keyboardType: TextInputType.number,
                                      ),
                                    ],
                                  ),
                                ),
                              ).show();
                            }
                          },
                          child: Text("SUBMIT"),
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
