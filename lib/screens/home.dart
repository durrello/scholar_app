import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:scholar_app/screens/account.dart';
import 'package:scholar_app/screens/app_form/apply.dart';
import 'package:scholar_app/screens/app_form/documents.dart';
import 'package:scholar_app/screens/app_form/experience.dart';
import 'package:scholar_app/screens/app_form/guardians.dart';
import 'package:scholar_app/screens/app_form/personal_info.dart';
import 'package:scholar_app/screens/app_form/qualifications.dart';
import 'package:scholar_app/screens/connect_with.dart';
import 'package:scholar_app/screens/notifications.dart';
import 'package:scholar_app/screens/preview.dart';
import 'package:scholar_app/screens/profile.dart';
import 'package:scholar_app/screens/settings.dart';

//imported files
import 'package:hexcolor/hexcolor.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //defining the image carousel
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Hexcolor("#98C429"),
          title: Text("SCHOLAR", textAlign: TextAlign.end,),
          actions: [
            InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new PreviewScreen())),
                child: Column(
                  children: [
                    new Image.asset('assets/images/preview.png', height: 40, width: 70, ),
                    Text("Preview")
                  ],
                )),
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: [
              //header
              new UserAccountsDrawerHeader(
                accountName: Text("Durrell Gemuh"),
                accountEmail: Text("gemuhd@gmail.com"),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image(
                      image: AssetImage("assets/images/profile_picture.jpg"),
                    ),
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    child: Image(
                      image: AssetImage("assets/images/fb.png"),
                    ),
                  ),
                  CircleAvatar(
                    child: Image(
                      image: AssetImage("assets/images/tt.jpeg"),
                    ),
                  ),
                ],
                decoration: new BoxDecoration(
                    color: Hexcolor("98C429"),
                    image: DecorationImage(image: AssetImage("assets/images/logo.png"),)
                ),
              ),

              //body
              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new HomeScreen())),
                child: ListTile(
                  title: Text("Admissions"),
                  leading: Icon(
                    Icons.home,
                    color: Hexcolor("#8eab46"),
                  ),
                ),
              ),

              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new NotificationScreen())),
                child: ListTile(
                  title: Text("Notifications"),
                  leading: Icon(
                    Icons.notifications,
                    color: Hexcolor("#8eab46"),
                  ),
                ),
              ),

              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new ProfileScreen())),
                child: ListTile(
                  title: Text("Profile"),
                  leading: Icon(
                    Icons.person,
                    color: Hexcolor("#8eab46"),
                  ),
                ),
              ),

              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new AccountScreen())),
                child: ListTile(
                  title: Text("Account"),
                  leading: Icon(
                    Icons.account_box,
                    color: Hexcolor("#8eab46"),
                  ),
                ),
              ),

              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new Connect_with())),
                child: ListTile(
                  title: Text("Connect With"),
                  leading: Icon(
                    Icons.sync,
                    color: Hexcolor("#8eab46"),
                  ),
                ),
              ),

              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new SettingsScreen())),
                child: ListTile(
                  title: Text("Settings"),
                  leading: Icon(
                    Icons.settings,
                    color: Hexcolor("#8eab46"),
                  ),
                ),
              ),

              Divider(),
              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new HomeScreen())),
                child: ListTile(
                  title: Text("Logout"),
                  leading: Icon(
                    Icons.close,
                    color: Hexcolor("#8eab46"),
                  ),
                ),
              ),


            ],
          ),
        ),
        body:
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    primary: false,
                    children: [

                      InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new ApplyScreen())),
                        child: Card(
                          margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  overflow: Overflow.visible,
                                  children: [
                                    Image.asset('assets/images/apply.jpg', height: 100, width: 100, ),
                                    new Positioned(
                                        top: -20,
                                        right: -20,
                                        child: new Container(
                                          decoration: new BoxDecoration(
                                              borderRadius: new BorderRadius.circular(4.0)),
                                          width: 25,
                                          height: 25,
                                          alignment: Alignment.center,
                                          child: Icon(Icons.info, color: Hexcolor("#8eab46"), size: 30,),
                                        )),
                                  ],
                                ),
                                Text("Apply",),
                              ],
                            ),
                          ),
                        ),
                      ),


                      InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new PersonalInfoScreen())),
                        child: Card(
                          margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  overflow: Overflow.visible,
                                  children: [
                                    Image.asset('assets/images/personal.png', height: 90, width: 100, ),
                                    new Positioned(
                                        top: -20,
                                        right: -20,
                                        child: new Container(
                                          decoration: new BoxDecoration(
                                              borderRadius: new BorderRadius.circular(4.0)),
                                          width: 25,
                                          height: 25,
                                          alignment: Alignment.center,
                                          child: Icon(Icons.check, color: Hexcolor("#8eab46"), size: 30,),
                                        )),
                                  ],
                                ),
                                Text("  \nPersonal Details",),
                              ],
                            ),
                          ),
                        ),
                      ),


                      InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new GuardianInfoScreen())),
                        child: Card(
                          margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  overflow: Overflow.visible,
                                  children: [
                                    Image.asset('assets/images/parents.png', height: 100, width: 100, ),
                                    new Positioned(
                                        top: -20,
                                        right: -20,
                                        child: new Container(
                                          decoration: new BoxDecoration(
                                              borderRadius: new BorderRadius.circular(4.0)),
                                          width: 25,
                                          height: 25,
                                          alignment: Alignment.center,
                                          child: Icon(Icons.check, color: Hexcolor("#8eab46"), size: 30,),
                                        )),
                                  ],
                                ),
                                Text("Parents/Guardians",),
                              ],
                            ),
                          ),
                        ),
                      ),


                      InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new ExperienceScreen())),
                        child: Card(
                          margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  overflow: Overflow.visible,
                                  children: [
                                    Image.asset('assets/images/work.png', height: 100, width: 100, ),
                                    new Positioned(
                                        top: -20,
                                        right: -20,
                                        child: new Container(
                                          decoration: new BoxDecoration(
                                              borderRadius: new BorderRadius.circular(4.0)),
                                          width: 25,
                                          height: 25,
                                          alignment: Alignment.center,
                                          child: Icon(Icons.check, color: Hexcolor("#8eab46"), size: 30,),
                                        )),
                                  ],
                                ),
                                Text("Work Experience",),
                              ],
                            ),
                          ),
                        ),
                      ),


                      InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new QualificationScreen())),
                        child: Card(
                          margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  overflow: Overflow.visible,
                                  children: [
                                    Image.asset('assets/images/qualification.png', height: 80, width: 100, ),
                                    new Positioned(
                                        top: -20,
                                        right: -20,
                                        child: new Container(
                                          decoration: new BoxDecoration(
                                              borderRadius: new BorderRadius.circular(4.0)),
                                          width: 25,
                                          height: 25,
                                          alignment: Alignment.center,
                                          child: Icon(Icons.help, color: Colors.redAccent, size: 30,),
                                        )),
                                  ],
                                ),
                                Text("\nQualifications",),
                              ],
                            ),
                          ),
                        ),
                      ),


                      InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new DocumentScreen())),
                        child: Card(
                          margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  overflow: Overflow.visible,
                                  children: [
                                    Image.asset('assets/images/docs.png', height: 100, width: 100, ),
                                    new Positioned(
                                        top: -20,
                                        right: -20,
                                        child: new Container(
                                          decoration: new BoxDecoration(
                                              borderRadius: new BorderRadius.circular(4.0)),
                                          width: 25,
                                          height: 25,
                                          alignment: Alignment.center,
                                          child: Icon(Icons.close, color: Colors.redAccent, size: 30,),
                                        )),
                                  ],
                                ),
                                Text("Documents",),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Card(
                        margin: EdgeInsets.fromLTRB(5, 10, 10, 5),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Image.asset('assets/images/letters.png', height: 100, width: 100, ),
                                  new Positioned(
                                      top: -20,
                                      right: -20,
                                      child: new Container(
                                        decoration: new BoxDecoration(
                                            borderRadius: new BorderRadius.circular(4.0)),
                                        width: 25,
                                        height: 25,
                                        alignment: Alignment.center,
                                        child: Icon(Icons.search, color: Hexcolor("#8eab46"), size: 30,),
                                      )),
                                ],
                              ),
                              Text("Application Letters",),
                            ],
                          ),
                        ),
                      ),
                              
                              Container(
                                margin: EdgeInsets.all(10),
                                child: FlatButton(
                                    color: Hexcolor("#98C429"),
                                    onPressed: () {
                                      return  Alert(
                                          context: context,
                                          title: "Pay Application Fees",
                                         // desc: "Clicking here takes you to sign/login with facebook, implement using firebase, or facebook auth",
                                          buttons: [
                                            DialogButton(child: Text("Continue"), onPressed: () {Navigator.pop(context);}),
                                          ],
                                      content: Form(
                                        child: Column(
                                          children: [
                                            TextFormField(
                                              decoration: InputDecoration(
                                                labelText: "Paying for application.."
                                              ),
                                            ),

                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: "MoMo number",

                                              ),
                                              keyboardType: TextInputType.number,
                                            ),

                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: "Amount"
                                              ),
                                              keyboardType: TextInputType.number,
                                            )
                                          ],
                                        ),
                                      ),
                                      ).show();
                                    },
                                    child: Text("SUBMIT",),

                                ),
                              ),
                      
                    ],
                  ),
    );
  }
}