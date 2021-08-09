import 'package:flutter/material.dart';
import 'package:steamly_app/routes/routes.dart';
import 'package:steamly_app/widgets/login_page_widgets/input_textfield.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      alignment: Alignment.topRight,
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.homeRoute),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            StadiumBorder(
              side: BorderSide(color: Colors.black),
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
              getColor), // accessed from login_widget.dart
        ),
        child: Text(
          "Skip",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

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