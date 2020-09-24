import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:scholar_app/screens/login.dart';

class SignupScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return SignupScreenState();
  }

}

class SignupScreenState extends State<SignupScreen> {
  String email;
  String _name;
  String _email;
  String _phone;
  String _password;
  String _username;
  String _campus;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();


//name validation function
  Widget _buildNameField() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 30, 0, 5),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Name', border: OutlineInputBorder()),
        validator: (String value){
          if(value.isEmpty){
            return 'Name is required';
          }
        },
        onSaved: (String value){
          _name = value;
        },

      ),
    );
  }

//email validation function
  Widget _buildEmailField() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder()),
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
          _email = value;
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
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Enter Phone Number', border: OutlineInputBorder()),
        keyboardType: TextInputType.phone,
        // ignore: missing_return
        validator: (String value){
          if(value.isEmpty){
            return 'Phone Number is required';
          }
        },
        onSaved: (String value){
          _phone = value;
        },
      ),
    );  }

//password validation function
  Widget _buildPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder()),
        keyboardType: TextInputType.visiblePassword,
        // ignore: missing_return
        validator: (String value){
          if(value.isEmpty){
            return 'Password is required';
          }
        },
        onSaved: (String value){
          _password = value;
        },

      ),
    );  }

//user validation function
  Widget _buildUsername() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Username', border: OutlineInputBorder()),
        validator: (String value){
          if(value.isEmpty){
            return 'Username is required';
          }
        },
        onSaved: (String value){
          _username = value;
        },
      ),
    );  }

//campus validation function
  Widget _buildCampus() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Campus', border: OutlineInputBorder()),
        validator: (String value){
          if(value.isEmpty){
            return 'Campus is required';
          }
        },
        onSaved: (String value){
          _name = value;
        },
      ),
    );  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
                          margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                          child: RaisedButton(
                            color: Hexcolor("#98C429"),
                            child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 16)),
                            onPressed: () => {},),
                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: RaisedButton(
                            child: Text("Login", style: TextStyle(color: Colors.green, fontSize: 16)),
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
                    _buildCampus(),

                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: RaisedButton(
                        child: Text("SIGNUP", style: TextStyle(color: Colors.green, fontSize: 16)),
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
    margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
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

void _showSnackBar(BuildContext context) {
  Scaffold.of(context).showSnackBar(
    SnackBar(content: Text("Not yet implemented")),
  );
}

//Widget _buildSignUpLogin(){
//  Container(
//    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
//    child: RaisedButton(
//      child: Text("Submit", style: TextStyle(color: Colors.green, fontSize: 16)),
//      onPressed: () => {
//        Navigator.of(context).pushReplacement(MaterialPageRoute(
//            builder: (BuildContext context) => LoginScreen()))
//        },),
//  );
//}