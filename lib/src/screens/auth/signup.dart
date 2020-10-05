import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//imported custom widgets and commons
import 'package:scholar_app/src/commons.dart';

//imported models
import 'package:scholar_app/src/models/campus.dart';
import 'package:scholar_app/src/models/validation/email.dart';
import 'package:scholar_app/src/models/validation/name.dart';
import 'package:scholar_app/src/models/validation/password.dart';
import 'package:scholar_app/src/models/validation/phone_number.dart';
import 'package:scholar_app/src/models/validation/user_name.dart';

//imported screens
import 'package:scholar_app/src/screens/auth/login.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignupScreenState();
  }
}

class SignupScreenState extends State<SignupScreen> {
  String name;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                child: Row(
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
              ),
              Form(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: RaisedButton(
                          color: primary,
                          child: Text("Sign Up",
                              style: TextStyle(color: white, fontSize: 16)),
                          onPressed: () => {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: RaisedButton(
                          child: Text("Login",
                              style: TextStyle(color: green, fontSize: 16)),
                          onPressed: () => {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LoginScreen()))
                          },
                        ),
                      ),
                    ],
                  ),
                  NameForm(),
                  EmailForm(),
                  PasswordForm(),
                  PhoneNumberForm(),
                  UserNameForm(),
                  Campus(),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: RaisedButton(
                      child: Text("SIGNUP",
                          style: TextStyle(color: green, fontSize: 16)),
                      onPressed: () => {
                        if (!_formkey.currentState.validate())
                          {}
                        else
                          {
                            _formkey.currentState.save(),
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        LoginScreen()))
                          }
                      },
                    ),
                  ),
                  _buildConnectWith(),
                ],
              )),
            ],
          )),
    );
  }
}

//connect with social media function
Widget _buildConnectWith() {
  return Container(
    margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
    alignment: Alignment.center,
    child: Column(
      children: [
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            child: Text(
              "SIGNUP WITH",
              textAlign: TextAlign.center,
            )),
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/gg.png',
                    height: 40,
                    width: 40,
                  ),
                  Text("Google"),
                ],
              ),
            ),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/fb.png',
                    height: 40,
                    width: 40,
                  ),
                  Text("FaceBook"),
                ],
              ),
            ),
            Spacer(),
            InkWell(
              // onTap:() => _showSnackBar(context),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/tt.jpeg',
                    height: 40,
                    width: 40,
                  ),
                  Text("Twitter"),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
