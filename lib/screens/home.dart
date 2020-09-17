import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
            new IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white70,
              ),
            //  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new SettingsScreen())),
            ),
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
                onTap: () {},
                child: ListTile(
                  title: Text("Profile"),
                  leading: Icon(
                    Icons.person,
                    color: Hexcolor("#8eab46"),
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Account"),
                  leading: Icon(
                    Icons.account_box,
                    color: Hexcolor("#8eab46"),
                  ),
                ),
              ),

              InkWell(
//                onTap: () {
//                  Navigator.of(context).push(
//                      MaterialPageRoute(builder: (context) => new Cart()));
//                },
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
                  title: Text("Close"),
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
                                        child: Icon(Icons.check, color: Hexcolor("#8eab46"), size: 30,),
                                      )),
                                ],
                              ),
                              Text("Apply",),
                            ],
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
                                        child: Icon(Icons.check, color: Hexcolor("#8eab46"), size: 30,),
                                      )),
                                ],
                              ),
                              Text("\nQualifications",),
                            ],
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
                                        child: Icon(Icons.check, color: Hexcolor("#8eab46"), size: 30,),
                                      )),
                                ],
                              ),
                              Text("Documents",),
                            ],
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
                                        child: Icon(Icons.check, color: Hexcolor("#8eab46"), size: 30,),
                                      )),
                                ],
                              ),
                              Text("Application Letters",),
                            ],
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
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              RaisedButton(
                                onPressed: () {},
                                child: const Text('LOGOUT', style: TextStyle(fontSize: 20)),
                                color: Colors.red,
                                textColor: Colors.white,
                                elevation: 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                    ],
                  ),
    );
  }
}