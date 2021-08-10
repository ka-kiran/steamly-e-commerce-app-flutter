import 'package:flutter/material.dart';
import 'package:steamly_app/models/products.dart';
import 'package:steamly_app/routes/routes.dart';
import 'package:steamly_app/utils/constants.dart';
import 'package:steamly_app/views/product_details_page.dart';

class CatalogItem extends StatelessWidget {
  const CatalogItem({
    Key? key,
    required this.size,
    required this.index,
  }) : super(key: key);

  final Size size;
  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        //await Future.delayed(Duration(seconds: 1));
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductDetailsPage()));
      },
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                left: kDefaultMargin,
                right: kDefaultMargin / 2,
                bottom: kDefaultMargin * 2.5),
            width: size.width * 0.4,
            decoration: BoxDecoration(
              color: catalogItemContainerColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: <Widget>[
                Image.asset(
                  products[index].image, // accessed from models/products.dart
                ),
                Container(
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  decoration: BoxDecoration(
                    color: catalogItemContainerColor,
                    borderRadius: BorderRadius.circular(11),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kShadowColor,
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Text(products[index].title),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.star, color: kPrimaryColor),
                                Text(products[index].rating.toString()),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            " Rs ${products[index].price}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
