import 'package:flutter/material.dart';

//importing installed packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:hexcolor/hexcolor.dart';


//importing screens and reusable components
//reusable components
import 'package:scholar_app/components/drawer_option.dart';

//screen
import 'package:scholar_app/screens/account.dart';
import 'package:scholar_app/screens/app_form/application_details.dart';
import 'package:scholar_app/screens/app_form/apply.dart';
import 'package:scholar_app/screens/app_form/documents.dart';
import 'package:scholar_app/screens/app_form/experience.dart';
import 'package:scholar_app/screens/app_form/guardians.dart';
import 'package:scholar_app/screens/app_form/personal_info.dart';
import 'package:scholar_app/screens/app_form/qualifications.dart';
import 'package:scholar_app/screens/connect_with.dart';
import 'package:scholar_app/screens/home/home_card.dart';
import 'package:scholar_app/screens/notifications.dart';
import 'package:scholar_app/screens/preview.dart';
import 'package:scholar_app/screens/profile.dart';
import 'package:scholar_app/screens/settings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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

              DrawerOption(
                text: "Admissions",
                iconData: Icons.home,
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new HomeScreen())),
                ),

              DrawerOption(
                text: "Notifications",
                iconData: Icons.notifications,
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new NotificationScreen())),
              ),

              DrawerOption(
                text: "Profile",
                iconData: Icons.person,
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new ProfileScreen())),
              ),

              DrawerOption(
                text: "Account",
                iconData: Icons.account_box,
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new AccountScreen())),
              ),

              DrawerOption(
                text: "Connect With",
                iconData: Icons.sync,
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new Connect_with())),
              ),

              DrawerOption(
                text: "Settings",
                iconData: Icons.settings,
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new SettingsScreen())),
              ),

              DrawerOption(
                text: "Logout",
                iconData: Icons.close,
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new HomeScreen())),
              ),
              Divider(),


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

                      HomeCard(
                        text: "Apply",
                        iconData: Icons.info,
                        image: Image.asset('assets/images/apply.jpg', height: 100, width: 100, ),
                        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new ApplyScreen())),
                      ),

                    //personal profile custom card,
                      HomeCard(
                        text: "  \nPersonal Details",
                        iconData: Icons.check,
                        image: Image.asset('assets/images/personal.png', height: 90, width: 100, ),
                        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new PersonalInfoScreen())),
                      ),

                      //personal profile custom card,
                      HomeCard(
                        text: "Parents/Guardians",
                        iconData: Icons.check,
                        image: Image.asset('assets/images/parents.png', height: 100, width: 100, ),
                        onPressed: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => new GuardianInfoScreen())),
                      ),

                      HomeCard(
                        text: "Work Experience",
                        iconData: Icons.check,
                        image:  Image.asset('assets/images/work.png', height: 100, width: 100, ),
                        onPressed: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => new ExperienceScreen())),
                      ),

                      HomeCard(
                        text: "\nQualifications",
                        iconData: Icons.help,
                        colors: Colors.redAccent,
                        image:   Image.asset('assets/images/qualification.png', height: 80, width: 100, ),
                        onPressed: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => new QualificationScreen())),
                      ),

                      HomeCard(
                        text: "Documents",
                        iconData: Icons.close,
                        colors: Colors.redAccent,
                        image: Image.asset('assets/images/docs.png', height: 100, width: 100, ),
                        onPressed: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => new DocumentScreen())),
                      ),

                      HomeCard(
                        text: "Application Details",
                        iconData: Icons.search,
                        image: Image.asset('assets/images/letters.png', height: 100, width: 100, ),
                        onPressed: () =>  Navigator.of(context).push(MaterialPageRoute(builder: (context) => new ApplicationScreen())),
                      ),


                              //submit button
                              Container(
                                margin: EdgeInsets.all(10),
                                child: FlatButton(
                                    color: Hexcolor("#98C429"),
                                    onPressed: () {
                                      return  Alert(
                                          context: context,
                                          title: "Pay Application Fees",
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