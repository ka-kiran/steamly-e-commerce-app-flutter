import 'package:flutter/material.dart';
import 'package:steamly_app/models/products.dart';
import 'package:steamly_app/utils/constants.dart';
import 'package:steamly_app/widgets/details_page_widgets/colordots.dart';

class ColorAndCode extends StatelessWidget {
  final Products products;
  const ColorAndCode({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
              Row(
                children: <Widget>[
                  ColorDots(
                    color: Color(0xFF202020),
                    isSelected: true,
                  ),
                  ColorDots(color: Color(0xFFF8C078)),
                  ColorDots(color: Color(0xFFA29898)),
                ],
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(color: kPrimaryTextColor),
            children: [
              TextSpan(
                text: "Code\n",
              ),
              TextSpan(
                text: "STEAMLY03",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
