import 'package:flutter/cupertino.dart';
import 'package:parking_app/Screens/HomeScreen.dart';
import 'Screens/LoginScreen.dart';

final Map<String, WidgetBuilder> routes = {
  // ignore: prefer_const_constructors
  Home.routeName: (BuildContext context) => Home(),
  LoginScreen.routeName: (BuildContext context) => LoginScreen(),
};
