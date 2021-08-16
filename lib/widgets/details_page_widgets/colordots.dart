import 'package:flutter/material.dart';
import 'package:steamly_app/utils/constants.dart';

// color selector radio button
class ColorDots extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDots({
    Key? key,
    required this.color,
    this.isSelected =
        false, // * required named parameters don't have default value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultMargin / 4,
        right: kDefaultPadding / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color, ////Color(0xFF202020),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
