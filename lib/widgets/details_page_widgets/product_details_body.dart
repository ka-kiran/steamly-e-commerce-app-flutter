import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:steamly_app/models/products.dart';
import 'package:steamly_app/utils/constants.dart';
import 'package:steamly_app/widgets/details_page_widgets/add_cart.dart';

class ProductDetailsBody extends StatelessWidget {
  final Products products;
  final int index;
  const ProductDetailsBody({
    Key? key,
    required this.products,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
                tag: Key(products.id.toString()),
                child: Image.asset(products.image, height: size.height * 0.4)),
            Container(
              margin: EdgeInsets.only(
                  top: size.height * 0.1, bottom: size.height * 0.3),
              height: size.height * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset.zero,
                    color: kShadowColor,
                    blurRadius: 8,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: kDefaultPadding * 1,
                  right: kDefaultPadding * 1,
                  top: kDefaultPadding,
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          products.title,
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        Spacer(),
                        Text(
                          "Rs ${products.markedPrice}",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 3),
                        Text(
                          "Rs ${products.price}",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    AddToCart(tap: () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
