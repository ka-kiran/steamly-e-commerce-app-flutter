import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steamly_app/models/products.dart';
import 'package:steamly_app/utils/constants.dart';
import 'package:steamly_app/utils/sizes.dart';
import 'package:steamly_app/widgets/home_widgets/header_with_searchbox.dart';
import 'package:steamly_app/widgets/home_widgets/nav_categories.dart';
import 'package:steamly_app/widgets/home_widgets/section_title.dart';

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
                TitleWithMoreBtn(
                    titleText: "Recommended",
                    key: null), // accessed from titile_with_more_btn.dart

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
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(kDefaultPadding),
                height: 100,
                width: 160,
                decoration: BoxDecoration(
                  color: catalogItemContainerColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  product[0].image, // accessed from models/products.dart
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// bottom navigation bar
class CustomeBottomNavigationBar extends StatefulWidget {
  const CustomeBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomeBottomNavigationBarState createState() =>
      _CustomeBottomNavigationBarState();
}

class _CustomeBottomNavigationBarState
    extends State<CustomeBottomNavigationBar> {
  int _navSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
