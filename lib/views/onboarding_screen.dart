import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ScreenSliderTile(),
          ],
        ),
      ),
    );
  }
}

class ScreenSliderTile extends StatelessWidget {
  String imageAssetPath, onboardingTitle, onboardingDesc;
  ScreenSliderTile({
    required this.imageAssetPath,
    required this.onboardingTitle,
    required this.onboardingDesc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(imageAssetPath), // passed arg for image asset path
          SizedBox(
            height: 20.0,
          ),
          Text(onboardingTitle),
          SizedBox(height: 12.0,),
          Text(onboardingDesc),
        ],
      ),
    );
  }
}
