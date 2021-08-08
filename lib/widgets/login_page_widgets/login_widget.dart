import 'package:flutter/material.dart';

// Skip Button Property in Login Screen
Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return Colors.black38;
  }
  return Colors.white;
}

// Text Field Input Decoration in Login Screen
InputDecoration textFieldInputDecoration(String labelText, String hintText) {
  return InputDecoration(
    hintText: hintText, // hint text
    hintStyle: TextStyle(
      color: Colors.black54,
    ),
    labelText: labelText, // label text
    labelStyle: TextStyle(
      color: Colors.black,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(11),
    ),
  );
}
