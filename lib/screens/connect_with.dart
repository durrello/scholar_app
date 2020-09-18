import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Connect_with extends StatefulWidget {
  @override
  _Connect_withState createState() => _Connect_withState();
}

class _Connect_withState extends State<Connect_with> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Connect With"), backgroundColor: Hexcolor("#98C429"),),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("You can connect multiple accounts to be able to log in using them.",  textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            InkWell(
              child: Card(
                margin: EdgeInsets.fromLTRB(5, 20, 5, 5),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: FlatButton(
                    onPressed: () {
                      return  Alert(
                          context: context,
                          title: "Alert",
                          desc: "Clicking here takes you to sign/login with facebook, implement using firebase, or facebook auth",
                          buttons: [
                            DialogButton(child: Text("Continue"), onPressed: () {Navigator.pop(context);}),
                            DialogButton(child: Text("Cancel"), onPressed: () {Navigator.pop(context);})
                          ]
                      ).show();
                    },
                    child: Row(
                      children: [
                        Image.asset('assets/images/fb.png', height: 100, width: 90, ),
                        Text("   Facebook",),
                      ],
                    )
                ),
              ),
            ),

            InkWell(
              child: Card(
                margin: EdgeInsets.all(5),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                        child: FlatButton(
                          onPressed: () {
                            return  Alert(
                                context: context,
                                title: "Alert",
                                desc: "Clicking here takes you to sign/login with twitter, implement using firebase, or twitter auth",
                                buttons: [
                                  DialogButton(child: Text("Continue"), onPressed: () {Navigator.pop(context);}),
                                  DialogButton(child: Text("Cancel"), onPressed: () {Navigator.pop(context);})
                                ]
                            ).show();
                          },
                          child: Row(
                             children: [
                               new Spacer(),
                               Text("Twitter",),
                               Image.asset('assets/images/tt.jpeg', height: 100, width: 90, ),
                             ],
                          ),
                        ),
              ),
            ),


            InkWell(
              child: Card(
                margin: EdgeInsets.all(5),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: FlatButton(
                        onPressed: () {
                          return  Alert(
                              context: context,
                              title: "Alert",
                              desc: "Clicking here takes you to sign/login with google, implement using firebase, or google auth",
                              buttons: [
                                DialogButton(child: Text("Continue"), onPressed: () {Navigator.pop(context);}),
                                DialogButton(child: Text("Cancel"), onPressed: () {Navigator.pop(context);})
                              ]
                          ).show();
                        },
                        child: Row(
                          children: [
                            Image.asset('assets/images/gg.png', height: 100, width: 90, ),
                            Text("Google",),
                          ],
                        )
                        ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
