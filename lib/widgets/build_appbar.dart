import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBar(String appBarTitle) {
  return AppBar(
    title: Text(
      appBarTitle,
      style: TextStyle(
        fontSize: 20,
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
    ),
  );
}
