import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:steamly_app/models/products.dart';
import 'package:steamly_app/widgets/details_page_widgets/product_details_body.dart';

class ProductDetailsPage extends StatelessWidget {
  final Products products;
  final int index;
  const ProductDetailsPage(
      {Key? key, required this.products, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DetailsAppBar(),
      body: ProductDetailsBody(index: index, products: products),
      // second value is of ProductDetailsPage
    );
  }

  AppBar DetailsAppBar() {
    return AppBar(
      title: Text("Cart"),
      elevation: 0,
      backgroundColor: Colors.white,
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/search.svg"),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/favourite.svg",
            width: 20,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/cart-filling.svg"),
        ),
      ],
    );
  }
}
