import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:steamly_app/common_components/bottom_nav.dart';
import 'package:steamly_app/models/products.dart';
import 'package:steamly_app/routes/routes.dart';
import 'package:steamly_app/views/home_screen.dart';
import 'package:steamly_app/views/login_screen.dart';
import 'package:steamly_app/views/product_details_page.dart';
import 'package:steamly_app/views/onboarding_screen.dart';
import 'package:steamly_app/views/signup_screen.dart';
import 'package:steamly_app/views/splash_screen.dart';
import 'package:steamly_app/views/view_more_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // initialize firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.splashScreenRoute, // initial route for splash screen
      routes: {
        "/": (context) => HomePage(), // default route
        MyRoutes.splashScreenRoute: (context) => SplashScreen(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.signupRoute: (context) => SignUpScreen(),
        MyRoutes.onBoardingRoute: (context) => OnBoardingScreen(),
        MyRoutes.homeRoute: (context) => HomePage(),
        //MyRoutes.productDetailsRoute: (context) => ProductDetailsPage(),
        MyRoutes.viewMoreRoute: (context) => ViewMorePage(),
        MyRoutes.bottomNavRoute: (context) => BottomNavigation(),
      },
    );
  }
}
