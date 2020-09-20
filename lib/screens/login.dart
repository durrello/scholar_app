import 'package:flutter/material.dart';
import 'package:scholar_app/screens/home.dart';
import 'package:scholar_app/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  //getting data from sign up screen
  String email;
  LoginScreen({this.email});

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState(email);
  }

}
class LoginScreenState extends State<LoginScreen> {
  String email;
  LoginScreenState(this.email);


  String _email;
  String _password;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildEmailField() {
    return ListTile(
      title: Text("Email"),
      subtitle: Text('${email}'),
    ); 
  }

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
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => HomeScreen()))
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



