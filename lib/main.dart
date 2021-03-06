import 'dart:math';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:steamly_app/common_components/bottom_nav.dart';
import 'package:steamly_app/routes/routes.dart';
import 'package:steamly_app/utils/translator.dart';
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

/* set orientations
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown,
  ]).then((_) => runApp(MyApp()));
}
*/

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // @override
  // void initState() {
  //   SystemChrome.setPreferredOrientations([
  //     DeviceOrientation.landscapeLeft,
  //     DeviceOrientation.portraitDown,
  //   ]);
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  LanguagesEnum selectedLanguage = LanguagesEnum.English;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyTranslator(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      // localization implementation in all widgets
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      supportedLocales: [
        Locale('en', "US"),
        Locale("hi", "HI"),
      ],
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
