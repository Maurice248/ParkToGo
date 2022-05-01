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
              ElevatedButton(
                onPressed: () {},
                child: const Text('Reserve'),
              ),
            ]
          )
        )
    );
  }
}
