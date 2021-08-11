import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:steamly_app/utils/constants.dart';

class AddToCart extends StatelessWidget {
  final GestureTapCallback tap;
  const AddToCart({Key? key, required this.tap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        margin: EdgeInsets.all(kDefaultPadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kDefaultPadding * 2),
            color: kPrimaryColor),
        height: 50.0,
        alignment: Alignment.center,
        child: Text(
          'Add to Cart',
          style: GoogleFonts.roboto(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
