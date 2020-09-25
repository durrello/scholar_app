import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:scholar_app/screens/home/home.dart';
import 'package:scholar_app/screens/auth/retrieve_password.dart';
import 'package:scholar_app/screens/auth/signup.dart';

import 'package:google_sign_in/google_sign_in.dart';



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
  //google login
  bool _isLoggedIn = false;
  //
  String email;
  LoginScreenState(this.email);

  String forgot = "";
  Icon initialIcon =  Icon(Icons.crop_square, color: Colors.grey,);

  void showForgot(){
    setState(() {
      forgot = "Forgot Password";
    });
  }
  
  void changeIcon (){
    setState(() {
      initialIcon =  Icon(Icons.check_box, color: Hexcolor("#98C429"),);
    });
  }

  //login with google


  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  _login() async{
    try{
      await _googleSignIn.signIn();
      setState(() {
        _isLoggedIn = true;
      });
    } catch (err){
      print(err);
    }
  }

  _logout(){
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn = false;
    });
  }

  //end login

  //twitter loggin

  //end twitter login

  String _email;
  String _password;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildEmailField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder()),
      keyboardType: TextInputType.emailAddress,
      validator: (String value){
        // ignore: missing_return
        if(value.isEmpty){
          return 'Email is require';
        }
      },
      onSaved: (String value){
        _email = value;
      },
    );
  }

  Widget _buildPassword() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
      child: TextFormField(
        decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder()),
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:  _isLoggedIn ? HomeScreen() :  Center(
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
                      margin: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: (){
                              changeIcon();
                            },
                            child: Row(
                              children: [
                                initialIcon,
                                Text("Remember me"),
                              ],
                            ),
                          ),

                          Spacer(),

                          InkWell(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) => RetrivePasswordScreen()))
                            ,
                            child: Container(
                              child: Text('$forgot'),
                            ),
                          ),
                        ],
                      ),
                    ),

                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: RaisedButton(
                            child: Text("LOGIN", style: TextStyle(color: Colors.green, fontSize: 16)),
                            onPressed: () => {
                              if(!_formkey.currentState.validate()){
                                showForgot(),
                              }else{
                                _formkey.currentState.save(),
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => HomeScreen()))
                              }

                            },),
                        ),
                        
                        Divider(),

                    Container(
                      margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                              child: Text("LOGIN WITH", textAlign: TextAlign.center,)),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  _login();
                                },
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
                                onTap: () {
                                  Scaffold.of(context).showSnackBar(SnackBar(content: Text("Not yet implemented")));
                                },
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
                    ),

                        Divider(),

                        Container(
                          margin: EdgeInsets.fromLTRB(0, 15, 0, 40),
                          child:InkWell(
                                onTap: () =>
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (BuildContext context) => SignupScreen()))
                                ,
                                child: Container(
                                  child: Text("Don't have an account?"),
                                ),
                              ),
                        ),

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




