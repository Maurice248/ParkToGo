// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'package:flutter/material.dart';

import '../ParkResScreen.dart';

// ignore: must_be_immutable
class CustomLocationCard extends StatelessWidget {
  final int count;
  final String place;
  final String img;

  const CustomLocationCard(
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
                  padding: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Colors.black.withOpacity(0.23),
                      ),
                    ],
                  ),
                  height: 350,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        Navigator.pushReplacementNamed(context, ParkResScreen.routeName);
                        debugPrint('Card tapped.');
                      },
                      child: Column(children: <Widget>[
                        Container(
                          height: 230,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(img), fit: BoxFit.fill),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.location_on_outlined),
                          title: Text(place),
                          subtitle: Text('Available Slots: $count'),
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
