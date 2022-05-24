import 'dart:html';

import 'package:flutter/material.dart';
import 'package:parking_app/Screens/UI/CategorySelector.dart';
import 'package:parking_app/Screens/UI/OtpForm.dart';

class AdminOtp extends StatefulWidget {
  static var routeName = "AdminOtp";
  const AdminOtp({Key? key}) : super(key: key);

  @override
  State<AdminOtp> createState() => AdminOtpState();
}

class AdminOtpState extends State<AdminOtp> {
  Icon customIcon = const Icon(Icons.search);
  Widget customSearchBar = const Text('Admin');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 224, 224, 224),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: customSearchBar,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text("Verification Code",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 35)),
                      Text("We have sent the verification Code to",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 106, 106, 106),
                              fontSize: 12)),
                      Row(
                        children: <Widget>[
                          Text("+63********41",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 127, 127, 127),
                                  fontSize: 18)),
                          Text("Change phone number?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 47, 89, 241),
                                  fontSize: 15)),
                        ],
                      ),
                      OtpForm(),
                    ],
                  ),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}
