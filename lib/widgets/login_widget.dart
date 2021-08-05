import 'package:flutter/material.dart';

InputDecoration textFieldInputDecoration(String labelText, String hintText) {
  return InputDecoration(
    hintText: hintText, // hint text
    hintStyle: TextStyle(
      color: Colors.black54,
    ),
    labelText: labelText, // label text 
    labelStyle: TextStyle(
      color: Colors.black,
    )
  );
}
