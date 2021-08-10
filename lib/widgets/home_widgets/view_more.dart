import 'package:flutter/material.dart';
import 'package:steamly_app/models/products.dart';
import 'package:steamly_app/utils/constants.dart';

class ViewMorePage extends StatelessWidget {
  const ViewMorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                left: kDefaultMargin,
                right: kDefaultMargin / 2,
                bottom: kDefaultMargin * 2.5),
            width: 160,
            height: 180,
            decoration: BoxDecoration(
              color: catalogItemContainerColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: <Widget>[
                Image.asset(
                  products[0].image, // accessed from models/products.dart
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
                      Text(products[0].title),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.star, color: kPrimaryColor),
                                Text(products[0].rating.toString()),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            " Rs ${products[0].price}",
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
      )
        
      ],
    );
  }
}
