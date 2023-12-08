// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class textFormField extends StatelessWidget {
  

  IconData icon;
  String text;

  // ignore: use_key_in_widget_constructors
  textFormField({required this.text,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 14
      ),
      child: TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(
            color: Color.fromARGB(255, 246, 234, 207),
            width: 1
          )
        ),
        hintText: text,
        focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(
          color: Color(0xff739072),
          width: 1
          )
        ),
      ),
    )
  );
  }
}