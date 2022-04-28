// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class CustomHead extends StatelessWidget {
  String hintText;

  CustomHead(this.hintText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 35.0),
      child: Center(
        child: Text(
          hintText,
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ),
    );
  }
}
