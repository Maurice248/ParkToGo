// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

import '../ParkResScreen.dart';

// ignore: must_be_immutable
class CustomLocationCard extends StatelessWidget {
  final int count;
  final String place;
  final String img;

  CustomLocationCard(
      {required this.place, required this.count, required this.img});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                // ignore: sized_box_for_whitespace
                Container(
                  // padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  height: 400,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, ParkResScreen.routeName);
                        debugPrint('Card tapped.');
                      },
                      child: Column(children: <Widget>[
                        Container(
                          height: 300,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("img/cebu-port.jpeg"),
                                fit: BoxFit.fill),
                          ),
                        ),
                        const ListTile(
                          leading: Icon(Icons.location_on_outlined),
                          title: Text("Location"),
                          subtitle: Text('Available Slots: '),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
