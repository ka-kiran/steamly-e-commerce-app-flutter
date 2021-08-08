import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steamly_app/models/onboarding_data.dart';
import 'package:steamly_app/routes/routes.dart';
import 'package:steamly_app/utils/constants.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoardingScreen> {
  int selectedSliderIndex = 0; // current slider index
  int positionIndex = 0;
  late PageController _pageController;

  moveToLoginPage(BuildContext context) async {
    await Navigator.pushNamed(context, MyRoutes.loginRoute);
    setState(() {
      moveToLoginPage(context);
    });
  }

  onIndexChanged(int index) {
    setState(() {
      selectedSliderIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: sliderModel.length, // accessed from onboarding_data.dart
        itemBuilder: (_, i) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  SvgPicture.asset(
                    sliderModel[i].image,
                    height: 300,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    "Discover the trends and products.",
                    style: TextStyle(
                      color: onboardingPrimaryTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "One hotspot for wide range of categories.",
                    style: TextStyle(
                      color: onboardingSecondaryTextColor,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      fontFamily: GoogleFonts.roboto().fontFamily,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// Widget buildOnboardingScreen (int index){
//   return Container(
//     child: Column(children: [
//       SvgPicture.asset(image)
//     ],),
//   );
// }
