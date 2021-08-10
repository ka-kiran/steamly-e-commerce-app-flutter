import 'package:flutter/material.dart';

class Products {
  final String image, title, description;
  final int price, id;
  final Color color;
  final double rating;
  Products(
      {required this.id,
      required this.image,
      required this.title,
      required this.price,
      required this.description,
      required this.color,
      required this.rating});
}

List<Products> products = [
  Products(
      id: 1,
      image: "assets/images/bag 1.png",
      title: "Black Leather Bag",
      price: 4400,
      description: "this is desc",
      color: Color(0xff202020),
      rating: 4.5),
  Products(
      id: 2,
      image: "assets/images/bag 2.png",
      title: "Red Dynamo",
      price: 4999,
      description: "this is desc 2",
      color: Color(0xff202020),
      rating: 4.2),
  Products(
      id: 3,
      image: "assets/images/bag 3.png",
      title: "Pink Bag",
      price: 4999,
      description: "this is desc 3",
      color: Color(0xff202020),
      rating: 4.2),
  Products(
      id: 4,
      image: "assets/images/bag 4.png",
      title: "Pink Bag",
      price: 4999,
      description: "this is desc 4",
      color: Color(0xff202020),
      rating: 4.2),
  Products(
      id: 5,
      image: "assets/images/bag 5.png",
      title: "Pink Bag",
      price: 4999,
      description: "this is desc 5",
      color: Color(0xff202020),
      rating: 4.2),
  Products(
      id: 6,
      image: "assets/images/bag 6.png",
      title: "Pink Bag",
      price: 4999,
      description: "this is desc 6",
      color: Color(0xff202020),
      rating: 4.2)
];
