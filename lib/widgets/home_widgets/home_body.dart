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
            height: 24,
            child: Stack(
              children:<Widget> [
                Text("Recommended", style: TextStyle(
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  fontSize: 16.0,
                ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
