import 'package:flutter/material.dart';

//imported 3rd party packages
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

//imported screens
import 'package:scholar_app/src/screens/onboarding_screen.dart';

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
      nextScreen: OnboardingScreen(),
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.scale,
    );
  }
}

