import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:steamly_app/utils/constants.dart';
import 'package:steamly_app/widgets/home_widgets/catalog_item.dart';
import 'package:steamly_app/widgets/home_widgets/header_with_searchbox.dart';
import 'package:steamly_app/widgets/home_widgets/nav_categories.dart';
import 'package:steamly_app/widgets/home_widgets/section_title.dart';
import 'package:steamly_app/views/view_more_screen.dart';

class HomePageBody extends StatelessWidget {
  moveToViewMorePage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ViewMorePage()));
  }

  @override
  Widget build(BuildContext context) {
    // Total height and width of screen for responsive behaviour
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          Container(
            child: NavigationBelowSearch(),
          ),
          SizedBox(
            height: 24.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: <Widget>[
                TitleWithMoreBtn(titleText: "Recommended", key: null),
                Spacer(),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      moveToViewMorePage(context);
                    },
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
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                children: <Widget>[
                  CatalogItem(size: size, index: 0),
                  CatalogItem(size: size, index: 1),
                  CatalogItem(size: size, index: 2)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: <Widget>[
                TitleWithMoreBtn(titleText: "Best Deals", key: null),
                Spacer(),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      moveToViewMorePage(context);
                    },
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
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                children: <Widget>[
                  CatalogItem(size: size, index: 5),
                  CatalogItem(size: size, index: 4),
                  CatalogItem(size: size, index: 3),
                  CatalogItem(size: size, index: 2),
                  CatalogItem(size: size, index: 1),
                  CatalogItem(size: size, index: 0),
                ],
              ),
            ),
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
  // ignore: unused_field
  int _navSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
