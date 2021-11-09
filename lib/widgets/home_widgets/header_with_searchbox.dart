import 'package:flutter/cupertino.dart';
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
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.0),
      // This container will cover 20% of total height
      height: size.height * 0.2,
      //height: displayHeight(context) * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: 36 + kDefaultPadding),
            height: size.height * 0.2 - 27,
            //height: displayHeight(context) * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3.0),
                    child: CircleAvatar(
                      radius: 28.0,
                      backgroundColor: Colors.white54,
                      child: CircleAvatar(
                        radius: 25.0,
                        backgroundImage:
                            AssetImage("assets/images/shirnkhu.webp"),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Hi, Pandu",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                          ),
                        ),
                        Text(
                          "GOOD EVENING",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: GoogleFonts.roboto().fontFamily,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      width: size.width / 3,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {}, // TODO: wishlist functionality
                        child: SvgPicture.asset("assets/icons/favourite.svg"),
                      ),
                      SizedBox(
                        width: 12.0,
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
              margin: EdgeInsets.symmetric(horizontal: kDefaultMargin),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kShadowColor.withOpacity(0.5),
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
