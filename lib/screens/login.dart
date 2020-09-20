import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      body: Center(
        child: Container(
          child: ListView(
            shrinkWrap: true,
            children: [
                Row(
                  children: [
                    Spacer(),
                    Image.asset('assets/images/logo.png', height: 100, width: 100,),
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
                        _buildPassword(),

                        Container(
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
                          child: RaisedButton(
                            child: Text("Submit", style: TextStyle(color: Colors.green, fontSize: 16)),
                            onPressed: () => {
                              if(!_formkey.currentState.validate()){

                              }else{
                                _formkey.currentState.save(),
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => HomeScreen()))
                              }

                            },),
                        ),
                        Divider(),

                        _buildConnectWith(),


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



Widget _buildConnectWith(){
  return Container(
    margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
    alignment: Alignment.center,
    child: Column(
      children: [
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(20),
            child: Text("LOGIN WITH", textAlign: TextAlign.center,)),
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Image.asset('assets/images/gg.png', height: 40, width: 40,),
                  Text("Google"),

                ],
              ),
            ),

            Spacer(),
            InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Image.asset('assets/images/fb.png', height: 40, width: 40,),
                  Text("FaceBook"),
                ],
              ),
            ),
            Spacer(),

            InkWell(
              onTap: () {},
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