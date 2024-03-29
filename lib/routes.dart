import 'package:flutter/cupertino.dart';
import 'package:parking_app/Screens/HomeScreen.dart';
import 'Screens/LoginScreen.dart';
import 'package:parking_app/Screens/ParkResScreen.dart';
import 'package:parking_app/Screens/RegisterScreen.dart';
import 'package:parking_app/Screens/AdminHomeScreen.dart';
import 'package:parking_app/Screens/AdminOtp.dart';
import 'package:parking_app/Screens/Records.dart';

final Map<String, WidgetBuilder> routes = {
  // ignore: prefer_const_constructors
  Home.routeName: (BuildContext context) => Home(),
  LoginScreen.routeName: (BuildContext context) => LoginScreen(),
  ParkResScreen.routeName: (BuildContext context) => ParkResScreen(),
  RegisterScreen.routeName: (BuildContext context) => RegisterScreen(),
  AdminHome.routeName: (BuildContext context) => AdminHome(),
  AdminOtp.routeName: (BuildContext context) => AdminOtp(),
  Records.routeName: (BuildContext context) => Records(),
};
