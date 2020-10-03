import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scholar_app/src/commons.dart';
import 'package:scholar_app/src/widgets/CustomHeader.dart';

class ConnectWith extends StatefulWidget {
  @override
  _ConnectWithState createState() => _ConnectWithState();
}

class _ConnectWithState extends State<ConnectWith> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Connect With"), backgroundColor: primary,),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
                margin: EdgeInsets.all(10),
                child: Center(
                  child: CustomHeader(text: "You can connect multiple accounts to be able to log in using them.")
                ) ),
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
