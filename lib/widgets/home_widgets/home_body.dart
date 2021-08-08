import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steamly_app/models/products.dart';
import 'package:steamly_app/utils/constants.dart';
import 'package:steamly_app/utils/sizes.dart';
import 'package:steamly_app/widgets/home_widgets/header_with_searchbox.dart';
import 'package:steamly_app/widgets/home_widgets/nav_section_below_search.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Total height and width of screen for responsive behaviour
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(
              size:
                  size), // extracted widget accessed from home_widgets/header_with_searchbox.dart
          Container(
            child:
                NavigationBelowSearch(), // widget for navigation section below the search box accessed from nav_section_below_search.dart
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: <Widget>[
                TitleInHomePage(titleText: "Recommended", key: null),
                Spacer(),
                Container(
                  child: GestureDetector(
                    onTap: () {}, // TODO: view more functionality
                    child: Row(
                      children: [
                        Text(
                          "View More",
                          style: TextStyle(
                            color: viewMoreTextColor,
                          ),
                        ),
                        SvgPicture.asset("assets/icons/chevron_right.svg"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TitleInHomePage extends StatelessWidget {
  // constructor
  const TitleInHomePage({
    required Key? key,
    required this.titleText,
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
