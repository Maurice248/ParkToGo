import 'package:flutter/material.dart';
// import 'package:parking_app/Screens/HomeScreen.dart';
import 'package:parking_app/Screens/WelcomeScreen.dart';
import 'package:parking_app/routes.dart';

void main() {
  runApp(MaterialApp(
    routes: routes,
    home: WelcomeScreen(),
  ));
}
