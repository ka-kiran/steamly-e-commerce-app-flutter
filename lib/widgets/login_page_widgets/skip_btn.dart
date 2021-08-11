import 'package:flutter/material.dart';
import 'package:steamly_app/routes/routes.dart';
import 'package:steamly_app/utils/constants.dart';

class SkipButton extends StatefulWidget {
  const SkipButton({
    Key? key,
  }) : super(key: key);

  @override
  _SkipButtonState createState() => _SkipButtonState();
}

class _SkipButtonState extends State<SkipButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      alignment: Alignment.topRight,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isPressed = true;
          });
          Navigator.pushNamed(context, MyRoutes.homeRoute);
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            StadiumBorder(
              side: BorderSide(color: Colors.black),
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(getColor),
        ),
        child: Text(
          "Skip",
          style: TextStyle(color: isPressed ? Colors.black : Colors.black),
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
    return Colors.white;
  }
  return kPrimaryColor;
}
