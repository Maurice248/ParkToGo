import 'dart:async';
import 'package:flutter/material.dart';

class ParkResScreen extends StatefulWidget {
  static var routeName = "ParkResScreen";
  

  @override
  State<ParkResScreen> createState() => _ParkResScreenState();
}

class _ParkResScreenState extends State<ParkResScreen> {
  static int maxSeconds = 60;
  static const maxMinutes = 5;
  int seconds = 0;
  int minutes = maxMinutes;
  Timer? timer; 

  void startTimer() {
    timer = Timer.periodic(const Duration(milliseconds: 1), (_){
      if (minutes > 0) {
        if (seconds <= 0 && minutes >= 0) {
          setState(() => minutes--);
          setState(() => seconds = maxSeconds);
        }
        setState(() => seconds--);
      }
    });
    
  }

  void stopTimer(){
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black
        ),
        body: Center(
          child: Column(
            children: <Widget>[
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
            ]
          )
        )
    );
  }

  Widget buildTime(){
    return Text(
      '$minutes:$seconds',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 80,
      )
    );
  }
}
