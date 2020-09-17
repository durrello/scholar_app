import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignupScreenState();
  }

}
class SignupScreenState extends State<SignupScreen> {

  String _name;
  String _email;
  String _phone;
  String _password;
  String _username;
  String _campus;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildNameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
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
      decoration: InputDecoration(labelText: 'Email'),
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
    );  }

  Widget _buildPhone() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Enter Phone Number'),
      keyboardType: TextInputType.phone,
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
      decoration: InputDecoration(labelText: 'Password'),
      keyboardType: TextInputType.visiblePassword,
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
      decoration: InputDecoration(labelText: 'Username'),
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
      decoration: InputDecoration(labelText: 'Campus'),
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
      appBar: AppBar(title: Text("SIGN UP")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Form(
            key: _formkey,
            child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildNameField(),
            _buildEmailField(),
            _buildPassword(),
            _buildPhone(),
            _buildUsername(),
            _buildCampus(),

            RaisedButton(
              child: Text("Submit", style: TextStyle(color: Colors.green, fontSize: 16)),
              onPressed: () => {
                if(!_formkey.currentState.validate()){

                }else{
                 _formkey.currentState.save(),
                  print(_name),
                }

              },)

            ],
        )),
      ),
    );
  }
  
}



