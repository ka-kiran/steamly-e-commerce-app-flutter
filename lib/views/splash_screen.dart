import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steamly_app/utils/constants.dart';
import 'package:steamly_app/views/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedSplashScreen(
          splash: Column(
            children: <Widget>[
              Container(
                height: 20,
                child: Image.asset(
                  "assets/images/logo.png",
                ),
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
              SizedBox(
                height: 8.0,
              ),
              Text(
                "YOUR ANOTHER SHOPPING PARTNER",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: GoogleFonts.cormorantGaramond().fontFamily,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
          nextScreen: OnBoardingScreen(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor:
              splashScreenBackgroundColor, // defined in constant_theme.dart
          duration: 3000,
        ),
      ),
    );
  }
}
