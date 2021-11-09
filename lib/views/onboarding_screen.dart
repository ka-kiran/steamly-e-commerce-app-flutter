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
  int currentSliderIndex = 0; // current slider index
  int positionIndex = 0;
  late PageController _pageController;

  moveToLoginPage(BuildContext context) async {
    await Navigator.pushNamed(context, MyRoutes.loginRoute);
    setState(() {
      moveToLoginPage(context);
    });
  }

  changeIndex(int index) {
    // when changing page change the current index
    setState(() {
      currentSliderIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Expanded(
              child: buildPageView(),
            ),
            // for current slider indicator
            Container(
              margin: EdgeInsets.only(bottom: 80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  sliderModel.length,
                  (index) => buildDots(index, context), // slider indicator dots
                ),
              ),
            ),
            Container(
              height: 60.0,
              width: MediaQuery.of(context).size.width,
              //width: double.infinity,
              color: kPrimaryColor,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        moveToLoginPage(context);
                      },
                      child: Text("Skip"),
                    ),
                    SizedBox(
                      width: 290,
                    ),
                    InkWell(
                      onTap: () {
                        // controlling page flow
                        if (currentSliderIndex == sliderModel.length - 1) {
                          moveToLoginPage(context);
                        }
                        _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.bounceIn);
                      },
                      child: Text("Next"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// building page view
  Widget buildPageView() {
    return PageView.builder(
      controller: _pageController, // controller for page view
      itemCount: sliderModel.length, // accessed from onboarding_data.dart
      onPageChanged: (int index) {
        // on changing page change the current slider index
        setState(() {
          currentSliderIndex = index;
        });
      },
      itemBuilder: (_, index) {
        // parameters index
        return Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              SvgPicture.asset(
                sliderModel[index].image,
                height: 300,
              ),
              SizedBox(
                height: 100.0,
              ),
              Text(
                sliderModel[index].title,
                style: TextStyle(
                  color: onboardingPrimaryTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                sliderModel[index].desc,
                style: TextStyle(
                  color: onboardingSecondaryTextColor,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                ),
              )
            ],
          ),
        );
      },
    );
  }

  // build slider indicator dots
  Container buildDots(int index, BuildContext context) {
    //parameter  index
    return Container(
      height: 10,
      // width: 10,
      width: currentSliderIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kPrimaryColor,
      ),
    );
  }
}
