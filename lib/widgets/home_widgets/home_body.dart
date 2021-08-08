import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steamly_app/utils/constants.dart';
import 'package:steamly_app/utils/sizes.dart';
import 'package:steamly_app/widgets/home_widgets/header_with_searchbox.dart';

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
                NavigationBelowSearch(), // widget for navigation section below the search box
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 24,
            child: Stack(
              children: <Widget>[
                Text(
                  "Recommended",
                  style: TextStyle(
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontSize: 16.0,
                    color: mainTextColor,
                  ),
                ),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// navigation section below the search box widget
class NavigationBelowSearch extends StatefulWidget {
  const NavigationBelowSearch({Key? key}) : super(key: key);

  @override
  _NavigationBelowSearchState createState() => _NavigationBelowSearchState();
}

class _NavigationBelowSearchState extends State<NavigationBelowSearch> {
  List<String> navSection = [
    "Popular",
    "New Arrivals",
    "All Categories",
    "Offers",
    "Luxury",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // scroll towards horizontal direction
        itemCount: navSection.length,
        itemBuilder: (context, index) => buildNavSection(index),
      ),
    );
  }

// widget to build navigation section below search box
  Widget buildNavSection(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      // Container widget with box decorated microinteraction nav section
      child: Container(
        height: 20.0,
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          navSection[index], // pass navigation bar list
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
