import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }

}
class LoginScreenState extends State<LoginScreen> {

  String _email;
  String _password;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
    );  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder()),
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     // appBar: AppBar(title: Text("LOGIN")),
      body: Center(
        child: Container(
          child: ListView(
            shrinkWrap: true,
            children: [
              Container(
                child: Row(
                  children: [
                    Spacer(),
                    Image.asset('assets/images/logo.png', height: 100, width: 100,),
                    Spacer(),
                  ],
                ),
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
                        Divider(),
                        _buildPassword(),

                        RaisedButton(
                          child: Text("Submit", style: TextStyle(color: Colors.green, fontSize: 16)),
                          onPressed: () => {
                            if(!_formkey.currentState.validate()){

                            }else{
                              _formkey.currentState.save(),
                            }

                          },)

                      ],
                    )),
              ),
            ],
          )
        ),
      ),
    );
  }

}



