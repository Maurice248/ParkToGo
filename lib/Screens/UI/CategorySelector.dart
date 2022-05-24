import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:parking_app/Screens/AdminHomeScreen.dart';
import 'package:parking_app/Screens/AdminOtp.dart';
import 'package:parking_app/Screens/Records.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({Key? key}) : super(key: key);

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> catergories = ['dashboard', 'records', 'OTP'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          ExpansionTile(
            title: Text(
              "Page",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            children: <Widget>[
              ListTile(
                title: Text('Dashbaoard'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, AdminHome.routeName);
                  debugPrint('Card tapped.');
                },
              ),
              ListTile(
                title: Text('OTP form'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, AdminOtp.routeName);
                  debugPrint('Card tapped.');
                },
              ),
              ListTile(
                title: Text('Records'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, Records.routeName);
                  debugPrint('Card tapped.');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
