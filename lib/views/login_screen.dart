import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steamly_app/routes/routes.dart';
import 'package:steamly_app/utils/constant_themes.dart';
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
          width: MediaQuery.of(context).size.width,
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
              ),

              Column(
                children: [
                  TextFormField(
                    decoration: textFieldInputDecoration(
                      // accessed from login_widget.dart which takes two parameters
                      "Username",
                      "Enter your phone number, email or username",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter the phone number, email or username";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: textFieldInputDecoration(
                      "Password",
                      "Enter your password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter the valid password";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 18.0, horizontal: 150.0),
                    child: Text(
                      "Log In",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color:
                          loginButtonColor, // defined in constant_themes.dart
                      borderRadius: BorderRadius.circular(900.0),
                    ),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),

                  // Separation Line below Login Button
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 100.0),
                        color: Colors.grey,
                        width: 150.0,
                        height: 2.0,
                      ),
                      SizedBox(
                        width: 90.0,
                      ),
                      Container(
                        color: Colors.grey,
                        width: 150.0,
                        height: 2.0,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.0,
                    width: 10.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
