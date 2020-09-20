import 'package:flutter/material.dart';
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


  Widget _buildNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name', border: OutlineInputBorder()),
      validator: (String value){
        if(value.isEmpty){
          return 'Name is required';
        }
      },
      onSaved: (String value){
        _name = value;
      },

    );
  }

  Widget _buildEmailField() {
    return TextFormField(
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
    );  }

  Widget _buildPhone() {
    return TextFormField(
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
    );  }

  Widget _buildPassword() {
    return TextFormField(
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

    );  }

  Widget _buildUsername() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Username', border: OutlineInputBorder()),
      validator: (String value){
        if(value.isEmpty){
          return 'Username is required';
        }
      },
      onSaved: (String value){
        _username = value;
      },
    );  }

  Widget _buildCampus() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Campus', border: OutlineInputBorder()),
      validator: (String value){
        if(value.isEmpty){
          return 'Campus is required';
        }
      },
      onSaved: (String value){
        _name = value;
      },
    );  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    //  appBar: AppBar(title: Text("SIGN UP"), backgroundColor: Hexcolor("98C429"),),
      body: Container(
       // margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            //
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
            Divider(),
            Form(
                key: _formkey,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildNameField(),
                    Divider(),
                    _buildEmailField(),
                    Divider(),
                    _buildPassword(),
                    Divider(),
                    _buildPhone(),
                    Divider(),
                    _buildUsername(),
                    Divider(),
                    _buildCampus(),
                    Divider(),

                    RaisedButton(
                      child: Text("Submit", style: TextStyle(color: Colors.green, fontSize: 16)),
                      onPressed: () => {
                        if(!_formkey.currentState.validate()){

                        }else{
                          _formkey.currentState.save(),
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => LoginScreen(email : email )))
                        }
                      },)
                  ],
                )),
          ],
        )
      ),
    );
  }
  
}



