import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steamly_app/routes/routes.dart';
import 'package:steamly_app/utils/constants.dart';
import 'package:steamly_app/widgets/login_page_widgets/login_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  String emailValue = "";
  String passwordValue = "";

  @override
  void initState() {
    super.initState();
  }

  TextEditingController userNameTextEditingController =
      new TextEditingController();
  TextEditingController passwordTextEditingController =
      new TextEditingController();

  // on tap move to home page
  moveToHomePage(BuildContext context) async {
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      moveToHomePage(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
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
                ),
                Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.cover,
                ),
                Text("Steamly"),
                SizedBox(
                  height: 18.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: userNameTextEditingController,
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
                        SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          controller: passwordTextEditingController,
                          decoration: textFieldInputDecoration(
                            "Password",
                            "Enter your password",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter the valid password";
                            } else if (value.length < 8) {
                              return "Minimum 8 password characters required";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          padding: EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 8.0),
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
                        GestureDetector(
                          onTap: () => moveToHomePage(
                              context), // on tap move to home page
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 18.0,
                              horizontal: 150.0,
                            ),
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
                        ),
                        SizedBox(
                          height: 18.0,
                        ),

                        // Separation Line below Login Button
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 30.0),
                              color: Colors.grey,
                              width: 100.0,
                              height: 2.0,
                            ),
                            SizedBox(
                              width: 90.0,
                              child: Center(child: Text("OR")),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 0.0),
                              color: Colors.grey,
                              width: 100.0,
                              height: 2.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Container(
                          child: Text(
                            "Continue with",
                            textAlign: TextAlign.center,
                          ),
                        ),

                        // Alternative Login Section
                        Row(
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: () {},
                              child: Container(
                                child: Text("Google"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
