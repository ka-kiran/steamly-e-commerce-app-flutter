import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steamly_app/utils/constants.dart';

// widget for header including the search box in home screen
class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: myDefaultPadding * 2.5),
      // This container will cover 20% of total height
      height: size.height * 0.2,
      //height: displayHeight(context) * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: myDefaultPadding,
                right: myDefaultPadding,
                bottom: 36 + myDefaultPadding),
            height: size.height * 0.2 - 27,
            //height: displayHeight(context) * 0.2 - 27,
            decoration: BoxDecoration(
              color: myPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 28.0,
                    backgroundColor: Colors.white54,
                    child: CircleAvatar(
                      radius: 25.0,
                      backgroundImage:
                          AssetImage("assets/images/girl_profile.jpg"),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text("Hi, Assu"),
                      Text("GOOD EVENING"),
                    ],
                  ),
                  SizedBox(
                    width: 75.0,
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {}, // TODO: wishlist functionality
                        child: SvgPicture.asset("assets/icons/favourite.svg"),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      GestureDetector(
                        onTap: () {}, // TODO:
                        child:
                            SvgPicture.asset("assets/icons/notifications.svg"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              // margin and aaccessed from constants.dart
              margin: EdgeInsets.symmetric(horizontal: myDefaultMargin),
              padding: EdgeInsets.symmetric(horizontal: myDefaultPadding),
              height: 54.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: myShadowColor.withOpacity(0.5),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "I am searching for...",
                        hintStyle: TextStyle(
                          color: hintTextSearchColor,
                          fontFamily: GoogleFonts.robotoCondensed().fontFamily,
                          //fontSize: 18.0,
                          //fontFeatures: [FontFeature.stylisticSet(10)],
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    "assets/icons/search.svg",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
