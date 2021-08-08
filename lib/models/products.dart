import 'package:flutter/material.dart';

class Products {
  final String image, title, description;
  final int price, id;
  final Color color;
  Products(
      {required this.id,
      required this.image,
      required this.title,
      required this.price,
      required this.description,
      required this.color});
}

List<Products> product = [
  Products(
      id: 1,
      image: "assets/images/bag 1.png",
      title: "Black Leather Bag",
      price: 4400,
      description: "this is desc",
      color: Color(0xff202020))
];
