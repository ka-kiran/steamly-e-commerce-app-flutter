import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:steamly_app/models/products.dart';
import 'package:steamly_app/utils/constants.dart';
import 'package:steamly_app/views/product_details_page.dart';
import 'package:steamly_app/widgets/build_appbar.dart';

class ViewMorePage extends StatelessWidget {
  const ViewMorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar("View More"),
      body: SafeArea(
        child: Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return GridViewMore(
                products: products[index],
                size: size,
                index: index,
                press: () =>
                    ProductDetailsPage(products: products[index], index: index),
              );
            },
          ),
        ),
      ),
    );
  }
}

class GridViewMore extends StatelessWidget {
  final Size size;
  final Products products; // variable for products indexing
  final int index;
  final Function press; // what to do when pressed function
  const GridViewMore(
      {Key? key,
      required this.products,
      required this.size,
      required this.press,
      required this.index})
      : assert(products != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ProductDetailsPage(products: products, index: index)));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: size.width * 0.45,
                decoration: BoxDecoration(
                  color: catalogItemContainerColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      products.image,
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
                          Text("${products.title}".toString().tr),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.star, color: kPrimaryColor),
                                    Text(products.rating.toString()),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                " Rs ${products.price}",
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
      ),
    );
  }
}
