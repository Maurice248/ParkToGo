// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 600,
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 35.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                image: DecorationImage(
                  image: AssetImage("img/WelcomeBakground.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(right: 8.0),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Log In',
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 85.0),
                    child: Text(
                      'WELCOME TO',
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    margin: EdgeInsets.only(top: 15.0),
                    decoration: BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage("img/Logo.png"))),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Text(
                      'ParkToGo',
                      style: TextStyle(
                        fontSize: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Create Account',
                style: TextStyle(fontSize: 25.0),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red[700],
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
            ),
          ],
        ),
      ),
    );
  }
}
