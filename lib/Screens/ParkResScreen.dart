import 'package:flutter/material.dart';

class ParkResScreen extends StatefulWidget {
  static var routeName = "ParkResScreen";

  @override
  State<ParkResScreen> createState() => _ParkResScreenState();
}

class _ParkResScreenState extends State<ParkResScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: AppBar(
          backgroundColor: Colors.black,
          //const Icon(Icons.local_parking_outlined, color: Colors.white)
        )));
  }
}
