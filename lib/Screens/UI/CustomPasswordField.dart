// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({Key? key}) : super(key: key);

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
        child: TextFormField(
          obscureText: isHidden,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            hintText: "Enter Password",
            hintStyle: TextStyle(color: Colors.grey),
            labelText: "Enter Password",
            labelStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(
              Icons.lock,
              color: Colors.grey,
            ),
            suffixIcon: IconButton(
                onPressed: togglePasswordVisibility,
                icon: isHidden
                    ? Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      )
                    : Icon(
                        Icons.visibility,
                        color: Colors.grey,
                      )),
          ),
        ),
      ),
    );
  }

  void togglePasswordVisibility() => setState(() => isHidden = !isHidden);
}
