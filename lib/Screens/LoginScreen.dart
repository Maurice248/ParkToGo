// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:parking_app/Screens/UI/CustomHead.dart';
import './UI/CustomPasswordField.dart';
import './UI/CustomInputField.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              CustomHead("Log In"),
              CustomInputField("Enter UserName",
                  Icon(Icons.people, color: Colors.grey), 90.0),
              CustomPasswordField(),
              Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 18),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey, fontSize: 16.0),
                    ),
                  )),
              Container(
                margin: EdgeInsets.only(top: 35),
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red[700],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 80, vertical: 15),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(right: 40),
                height: 240,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/ark.png"), fit: BoxFit.cover)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
