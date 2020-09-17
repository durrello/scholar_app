import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scholar_app/screens/settings.dart';
//import 'package:carousel_pro/carousel_pro.dart';
//import 'package:flutter/rendering.dart';
//import 'package:fab_circular_menu/fab_circular_menu.dart';
//
////imported packages/files
//import 'package:demo_delivery/components/horizontal_listview.dart';
//import 'package:demo_delivery/components/products.dart';
//import 'package:demo_delivery/pages/cart.dart';

//imported files
import 'package:settings_ui/settings_ui.dart';




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
          backgroundColor: Colors.red,
          title: Text("SCHOLAR", textAlign: TextAlign.end,),
          actions: [
            new IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white70,
              ),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new SettingsScreen())),
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
                    backgroundColor: Colors.grey,

//                    child: Image(
//                      image: AssetImage("images/pp.jpg"),
//                    ),
                  ),
                ),
//                decoration: new BoxDecoration(
//                    color: Colors.red,
//                    image: DecorationImage(
//                      image: AssetImage("images/flutter.png"),
//                    )),
              ),

              //body
              InkWell(
                //onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new HomePage())),
                child: ListTile(
                  title: Text("Dashboard"),
                  leading: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Personal Details"),
                  leading: Icon(
                    Icons.person,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Qualifications"),
                  leading: Icon(
                    Icons.shopping_basket,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
//                onTap: () {
//                  Navigator.of(context).push(
//                      MaterialPageRoute(builder: (context) => new Cart()));
//                },
                child: ListTile(
                  title: Text("Work Experience"),
                  leading: Icon(
                    Icons.shopping_cart,
                    color: Colors.red,
                  ),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Parents/Guardians"),
                  leading: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
              ),

              Divider(),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text("Documents"),
                  leading: Icon(
                    Icons.settings,
                    color: Colors.blue,
                  ),
                ),
              ),

              InkWell(
//                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => About())),
                child: ListTile(
                  title: Text("Admission Letters"),
                  leading: Icon(
                    Icons.help_outline,
                    color: Colors.blue,
                  ),
                ),
              ),

              Divider(),
              InkWell(
                onTap: () => Navigator.of(context).pop(),
                child: ListTile(
                  title: Text("Close"),
                  leading: Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            //calling image carousel
            //image_carousel,

            //category section
            new Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Categories",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),

            //horizontal list view
            //HorizontalList(),

            //products section
            new Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Available",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),

            //grid view

//            Container(
//              height: 370,
//              child: Products(),
//            )
          ],
        ),

        //floating action button
//        floatingActionButton: FabCircularMenu(
//          children: [
//            IconButton(
//              icon: Icon(
//                Icons.home,
//                color: Colors.white,
//              ),
//              onPressed: () => Navigator.of(context).push(
//                  MaterialPageRoute(builder: (context) => new HomePage())),
//            ),
//            IconButton(
//                icon: Icon(Icons.favorite, color: Colors.white),
//                onPressed: () {
//                  print('Favorite');
//                }),
//            IconButton(
//              icon: Icon(Icons.notifications, color: Colors.white),
//              onPressed: () => Navigator.of(context).push(
//                  MaterialPageRoute(builder: (context) => new HomePage())),
//            )
//          ],
//          ringDiameter: 200,
//          fabOpenIcon: Icon(Icons.add, color: Colors.white),
//          ringColor: Colors.red,
//          fabColor: Colors.red,
//        )
    );
  }
}