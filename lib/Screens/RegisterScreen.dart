// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:parking_app/Screens/UI/CustomHead.dart';
import 'package:parking_app/Screens/UI/CustomInputField.dart';
import 'package:parking_app/Screens/UI/CustomPasswordField.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              CustomHead("Create Account"),
              CustomInputField("Enter UserName",
                  Icon(Icons.people, color: Colors.grey), 40.0),
              CustomInputField("Enter Email Address",
                  Icon(Icons.email, color: Colors.grey), 0.0),
              CustomInputField("Enter Mobile Number",
                  Icon(Icons.numbers, color: Colors.grey), 0.0),
              CustomPasswordField(),
              Container(
                margin: EdgeInsets.only(top: 30),
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
                height: 20,
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
