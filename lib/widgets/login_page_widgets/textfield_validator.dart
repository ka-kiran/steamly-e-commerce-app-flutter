import 'package:flutter/material.dart';

String? usernameValidator(value) {
  if (value!.isEmpty) {
    return "Please enter the phone number, email or username";
  }
  return null;
}

String? passwordValidator(value) {
  if (value!.isEmpty) {
    return "Please enter the valid password";
  } else if (value.length < 8) {
    return "Minimum 8 password characters required";
  } else if (value.length > 15) {
    return "Password characters must be less than 15.";
  }
  return null;
}
