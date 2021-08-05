import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:steamly_app/routes/routes.dart';
import 'package:steamly_app/utils/constant_theme.dart';
import 'package:steamly_app/widgets/login_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.cover,
              ),
              Text("Steamly"),

              // Skip Button
              ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, MyRoutes.homeRoute),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
