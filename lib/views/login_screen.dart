import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steamly_app/routes/routes.dart';
import 'package:steamly_app/utils/constants.dart';
import 'package:steamly_app/widgets/login_page_widgets/input_textfield.dart';
import 'package:steamly_app/widgets/login_page_widgets/skip_btn.dart';
import 'package:steamly_app/widgets/login_page_widgets/textfield_validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String emailValue = "";
  String passwordValue = "";

  final _auth = FirebaseAuth.instance;
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
    if (_formKey.currentState!.validate()) {
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        moveToHomePage(context);
      });
    }
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
                SkipButton(),
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
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          controller: userNameTextEditingController,
                          decoration: usernameTextFieldInputDecoration(
                            // accessed from login_widget.dart which takes two parameters
                            "Username",
                            "Enter your phone number, email or username",
                          ),
                          validator: usernameValidator,
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        TextFormField(
                          obscureText: true,
                          controller: passwordTextEditingController,
                          decoration: passwordTextFieldInputDecoration(
                              "Password",
                              "Enter your password",
                              Icon(Icons.visibility)),
                          validator: passwordValidator,
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
                              child: Center(child: Text("OR")),
                            ),
                            SizedBox(
                              width: 20.0,
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
                        Center(
                          child: Container(
                            child: Text(
                              "Continue with",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),

                        // Alternative Login Section
                        Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                // TODO:
                              },
                              child: Container(
                                width: 120,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: buttonShadowColor,
                                      blurRadius: 11,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Google",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontSize: 16.0),
                                    ),
                                    SvgPicture.asset(
                                      "assets/icons/google_icon.svg",
                                      width: 25,
                                      height: 25,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            GestureDetector(
                              onTap: () {
                                // TODO:
                              },
                              child: Container(
                                width: 120.0,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: buttonShadowColor,
                                      blurRadius: 11,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Facebook",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily:
                                              GoogleFonts.roboto().fontFamily,
                                          fontSize: 16.0),
                                    ),
                                    SvgPicture.asset(
                                      "assets/icons/facebook_icon.svg",
                                      width: 25,
                                      height: 25,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, MyRoutes.signupRoute);
                          },
                          child: Text(
                            "Register",
                          ),
                        )
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
