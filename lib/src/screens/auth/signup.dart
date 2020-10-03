import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//imported custom widgets and commons
import 'package:scholar_app/src/commons.dart';

//imported models
import 'package:scholar_app/src/models/campus.dart';

//imported screens
import 'package:scholar_app/src/screens/auth/login.dart';

class SignupScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return SignupScreenState();
  }

}

class SignupScreenState extends State<SignupScreen> {
  String email;
  String name;
  String emailHere;
  String phone;
  String password;
  String username;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();


//name validation function
  Widget _buildNameField() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Name',),
        validator: (String value){
          if(value.isEmpty){
            return 'Name is required';
          }
        },
        onSaved: (String value){
          name = value;
        },

      ),
    );
  }

//email validation function
  Widget _buildEmailField() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Email',),
        keyboardType: TextInputType.emailAddress,
        validator: (String value){
          if(value.isEmpty){
            return 'Email is required';
          }
          if(!RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(value)){
            return 'Please Enter a valid Email';
          } return null;
        },
        onSaved: (String value){
          emailHere = value;
        },
        onChanged: (text){
          email = text;
        },
      ),
    );
  }

//phone validation function
  Widget _buildPhone() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Enter Phone Number',),
        keyboardType: TextInputType.phone,
        // ignore: missing_return
        validator: (String value){
          if(value.isEmpty){
            return 'Phone Number is required';
          } 
        },
        onSaved: (String value){
          phone = value;
        },
      ),
    );  }

//password validation function
  Widget _buildPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Password',),
        keyboardType: TextInputType.visiblePassword,
        // ignore: missing_return
        validator: (String value){
          if(value.isEmpty){
            return 'Password is required';
          }
        },
        onSaved: (String value){
          password = value;
        },

      ),
    );  }

//user validation function
  Widget _buildUsername() {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Username',),
        validator: (String value){
          if(value.isEmpty){
            return 'Username is required';
          }
        },
        onSaved: (String value){
          username = value;
        },
      ),
    );  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Spacer(),
                  Image.asset('assets/images/logo.png', height: 100, width: 100,),
                  Spacer(),
                ],
              ),
            ),
            Form(
                key: _formkey,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: RaisedButton(
                            color: primary,
                            child: Text("Sign Up", style: TextStyle(color: white, fontSize: 16)),
                            onPressed: () => {},),
                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: RaisedButton(
                            child: Text("Login", style: TextStyle(color: green, fontSize: 16)),
                            onPressed: () => {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(
                                  builder: (BuildContext context) => LoginScreen()))
                            },),
                        ),
                      ],
                    ),

                    _buildNameField(),
                    _buildEmailField(),
                    _buildPassword(),
                    _buildPhone(),
                    _buildUsername(),
                    Campus(),

                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: RaisedButton(
                        child: Text("SIGNUP", style: TextStyle(color: green, fontSize: 16)),
                        onPressed: () => {
                          if(!_formkey.currentState.validate()){

                          }else{
                            _formkey.currentState.save(),
                            Navigator.of(context).pushReplacement(MaterialPageRoute(
                                builder: (BuildContext context) => LoginScreen(email : email )))
                          }
                        },),
                    ),

                    _buildConnectWith(),
                  ],
                )),
          ],
        )
      ),
    );
  }
  
}


//connect with social media function
Widget _buildConnectWith(){
  return Container(
    margin: EdgeInsets.fromLTRB(50, 0, 50, 20),
    alignment: Alignment.center,
    child: Column(
      children: [
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            child: Text("SIGNUP WITH", textAlign: TextAlign.center,)),
        Row(
          children: [
            InkWell(
              onTap: () {

              } ,
              child: Column(
                children: [
                  Image.asset('assets/images/gg.png', height: 40, width: 40,),
                  Text("Google"),

                ],
              ),
            ),

            Spacer(),
            InkWell(
              onTap:() {},
              child: Column(
                children: [
                  Image.asset('assets/images/fb.png', height: 40, width: 40,),
                  Text("FaceBook"),
                ],
              ),
            ),
            Spacer(),
            InkWell(
             // onTap:() => _showSnackBar(context),
              child: Column(
                children: [
                  Image.asset('assets/images/tt.jpeg', height: 40, width: 40,),
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
