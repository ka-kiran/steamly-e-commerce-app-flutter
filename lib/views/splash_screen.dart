import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steamly_app/utils/constant_theme.dart';
import 'package:steamly_app/views/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Container(
        height: 400.0,
        width: 400.0,
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/images/logo.png",
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "Steamly",
              style: TextStyle(
                color: Colors.black,
                fontFamily: GoogleFonts.cormorantGaramond().fontFamily,
                fontWeight: FontWeight.normal,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
      nextScreen: OnboardingScreen(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor:
          splashScreenBackgroundColor, // defined in constant_theme.dart
      duration: 3000,
    );
  }
}
