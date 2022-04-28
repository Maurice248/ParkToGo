// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  String hintText;
  Icon iconField;
  double x;

  CustomInputField(this.hintText, this.iconField, this.x);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: x),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
        child: TextFormField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            labelText: hintText,
            labelStyle: TextStyle(color: Colors.grey),
            prefixIcon: iconField,
          ),
        ),
      ),
    );
  }
}
