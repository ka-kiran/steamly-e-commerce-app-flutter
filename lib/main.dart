import 'package:flutter/material.dart';
import 'package:steamly_app/routes/routes.dart';
import 'package:steamly_app/views/home_page.dart';
import 'package:steamly_app/views/login_page.dart';
import 'package:steamly_app/views/product_details_page.dart';
import 'package:steamly_app/views/onboarding_screen.dart';
import 'package:steamly_app/views/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Steamly",
      home: SplashScreen(),
      // initialRoute: MyRoutes.loginRoute, // initial route for splash screen
      // routes: {
      //   "/": (context) => HomePage(),
      //   MyRoutes.loginRoute: (context) => LoginPage(),
      //   MyRoutes.homeRoute: (context) => HomePage(),
      //   MyRoutes.productDetailsRoute: (context) => ProductDetailsPage(),
      // },
    );
  }
}
