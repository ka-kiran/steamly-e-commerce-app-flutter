import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steamly_app/routes/routes.dart';
import 'package:steamly_app/utils/constants.dart';
import 'package:steamly_app/views/home_screen.dart';
import 'package:steamly_app/views/login_screen.dart';
import 'package:steamly_app/widgets/login_page_widgets/input_textfield.dart';
import 'package:steamly_app/widgets/login_page_widgets/textfield_validator.dart';

// void initializeFirebase() async {
//   await Firebase.initializeApp();
// }

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController userNameTextEditingController =
      new TextEditingController();
  TextEditingController passwordTextEditingController =
      new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;

  late String emailInputValue;
  late String passwordInputValue;
  bool showSpinner = false; // circular progress snipper

  moveToLoginPage(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      await Future.delayed((Duration(seconds: 3)));
      await Navigator.pushNamed(context, MyRoutes.loginRoute);
      setState(() {
        moveToLoginPage(context);
      });
    }
  }

  @override
  void dispose() {
    userNameTextEditingController.dispose();
    passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: SignUpAppBar(context),
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: userNameTextEditingController,
                    decoration: usernameTextFieldInputDecoration(
                      "Username",
                      "Enter your email",
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: usernameValidator,
                    onChanged: (value) {
                      emailInputValue = value;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: passwordTextEditingController,
                    decoration: passwordTextFieldInputDecoration(
                      "Password",
                      "Enter your password",
                      Icon(Icons.visibility),
                    ),
                    validator: passwordValidator,
                    onChanged: (value) {
                      passwordInputValue = value;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: size.width * 1,
                    height: 50,
                    child: ElevatedButton(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 2,
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () async {
                        setState(() {
                          showSpinner = true;
                        });
                        try {
                          final newUser =
                              await _auth.createUserWithEmailAndPassword(
                                  email: emailInputValue,
                                  password: passwordInputValue);
                          if (newUser != null && passwordInputValue != null) {
                            final snackBar = SnackBar(
                              content: Text("Successfully registered"),
                              action: SnackBarAction(
                                label: "Undo",
                                onPressed: () {}, // TODO: undo snackbar
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                            moveToLoginPage(context);
                          } else {
                            final snackBar = SnackBar(
                              content: Text("Please provide email or password"),
                              action: SnackBarAction(
                                label: "Ok",
                                onPressed: () {}, // TODO:
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        } catch (e) {
                          print(e);
                        }
                        setState(() {
                          showSpinner = false;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar SignUpAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        "Steamly Sign Up",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: kPrimaryColor,
    );
  }
}
