import 'package:flutter/material.dart';
import 'package:scholar_app/screens/home.dart';
import 'package:scholar_app/screens/login.dart';
import 'package:scholar_app/screens/signup.dart';
import 'package:scholar_app/screens/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}