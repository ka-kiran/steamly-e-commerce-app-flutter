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
        margin: EdgeInsets.only(left: kDefaultMargin *5, 
        right: kDefaultMargin *5,
        top: kDefaultMargin *2),
        
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11), color: kPrimaryColor),
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
