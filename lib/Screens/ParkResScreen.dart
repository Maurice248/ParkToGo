import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_beep/flutter_beep.dart';

class ParkResScreen extends StatefulWidget {
  static var routeName = "ParkResScreen";

  @override
  State<ParkResScreen> createState() => _ParkResScreenState();
}

class _ParkResScreenState extends State<ParkResScreen> {
  static int maxSeconds = 60;
  static const maxMinutes = 5;
  int timeActual = 300;
  int tens = 0;
  int ones = 0;
  int minutes = maxMinutes;
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (timeActual > 0) {
        timeActual--;
        print(timeActual);
        if (tens <= 0 && ones <= 0) {
          setState(() => minutes--);
          setState(() => tens = 5);
          setState(() => ones = 9);
        } else {
          setState(() => ones--);
          if (ones < 0) {
            setState(() => ones = 9);
            setState(() => tens--);
            //setState(() => tens--);
          }
        }
      } else {
        timer?.cancel();
        FlutterBeep.beep();
      }
    });
  }

  void stopTimer() {
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 224, 224, 224),
        appBar: AppBar(backgroundColor: Colors.black),
        body: Center(
            child: Column(children: <Widget>[
          //mainAxisAlignment: MainAxisAlignment.center,
          const Image(
            image: AssetImage('img/temp_pic_parkRes.png'),
          ),
          buildTime(),
          ElevatedButton(
            onPressed: () {
              startTimer();
            },
            child: const Text('Reserve'),
          ),
        ])));
  }

  Widget buildTime() {
    return Text('$minutes:$tens$ones',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 80,
        ));
  }
}
