import 'package:flutter/material.dart';
import '../ParkResScreen.dart';

class AdminCard extends StatelessWidget {
  int count;
  String place;
  String img;

  AdminCard({required this.place, required this.count, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                image:
                    DecorationImage(image: AssetImage(img), fit: BoxFit.fill),
              ),
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text(place),
              subtitle: Text('Available Slots: $count'),
            ),
            Row(
              children: <Widget>[
                TextButton(onPressed: () {}, child: Text("Edit")),
                TextButton(onPressed: () {}, child: Text("Delete")),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
