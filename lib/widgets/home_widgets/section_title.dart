import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steamly_app/utils/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  // constructor
  const TitleWithMoreBtn({
    required Key? key,
    required this.titleText, // e.g. Recommended
  }) : super(key: key);

  final String
      titleText; // variable declaration for Title in Home Page like Recommended
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              titleText, // e.g. Recommended
              style: TextStyle(
                fontFamily: GoogleFonts.roboto().fontFamily,
                fontSize: 16.0,
                color: kPrimaryTextColor,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 8.0,
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
          
        ],
      ),
    );
  }
}