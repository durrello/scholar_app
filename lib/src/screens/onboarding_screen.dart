import 'package:flutter/material.dart';

//imported 3rd party packages
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:hexcolor/hexcolor.dart';

//imported screens
import 'package:scholar_app/src/screens/auth/signup.dart';

class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: OverBoard(
        pages: pages,
        showBullets: true,
        skipCallback: () {
          _globalKey.currentState.showSnackBar(SnackBar(
            content: Text("Skip clicked"),
          ));
        },
        finishCallback: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => new SignupScreen())),
      ),
    );
  }

  final pages = [
    PageModel(
        title: 'Welcome',
        color: Hexcolor("#888A85"),
        imageAssetPath: 'assets/images/logo.png',
        body: '',
        doAnimateImage: true),
    PageModel(
        color: Hexcolor("#36BAEC"),
        imageAssetPath: 'assets/images/Icon.png',
        title: 'Admission made easy',
        body: 'With just a few clicks, you get to apply to the most prestigious University of your choice.',
        doAnimateImage: true),

    PageModel(
        color: Hexcolor("#8eab46"),
        imageAssetPath: 'assets/images/get.png',
        title: 'Let\'s Get Started',
        body: '',
        doAnimateImage: true),

  ];
}