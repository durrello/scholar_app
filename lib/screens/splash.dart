
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:scholar_app/screens/auth/signup.dart';


//third party

//providers

//screen

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen>  {

  @override
  Widget build(BuildContext context) {

    return AnimatedSplashScreen(
      splash: 'assets/images/logo.png',
      duration: 3000,
      nextScreen: SignupScreen(),
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.scale,
    );
  }
}

