import 'package:flutter/material.dart';
import 'package:steamly_app/widgets/build_appBar.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar("Cart"),
      body: Container(
        child: Text("details"),
      ),
    );
  }
}
