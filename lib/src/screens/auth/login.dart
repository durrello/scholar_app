import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//imported 3rd party packages
import 'package:google_sign_in/google_sign_in.dart';
import 'package:scholar_app/src/models/validation/email.dart';
import 'package:scholar_app/src/models/validation/password.dart';

//imported screens
import 'package:scholar_app/src/screens/auth/retrieve_password.dart';
import 'package:scholar_app/src/screens/auth/signup.dart';
import 'package:scholar_app/src/screens/home/home.dart';

//imported custom widgets and commons
import 'package:scholar_app/src/commons.dart';


class LoginScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }

}
class LoginScreenState extends State<LoginScreen> {

  //google login
  bool _isLoggedIn = false;
  //

  String forgot = "";
  Icon initialIcon =  Icon(Icons.crop_square, color: grey,);

  void showForgot(){
    setState(() {
      forgot = "Forgot Password";
    });
  }
  
  void changeIcon (){
    setState(() {
      initialIcon =  Icon(Icons.check_box, color: primary,);
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

  logOut(){
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn = false;
    });
  }

  //end login

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                        EmailForm(),
                        PasswordForm(),


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
                            child: Text("LOGIN", style: TextStyle(color: green, fontSize: 16)),
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




