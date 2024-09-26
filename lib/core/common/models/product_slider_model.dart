import 'package:flutter/material.dart';

class SliderProductModel {
  final String title;
  final double price;
  final String imageURL;
  final Gradient gradientColor;

  SliderProductModel({
    required this.title,
    required this.price,
    required this.imageURL,
    required this.gradientColor,
  });

  // Factory method to create a ProductModel from a Map (useful for APIs)
  factory SliderProductModel.fromMap(Map<String, dynamic> map) {
    return SliderProductModel(
      title: map['title'],
      price: map['price'],
      imageURL: map['imageURL'],
      gradientColor: map['gradientColor'], // Assumes gradientColor is stored correctly
    );
  }

  // Convert ProductModel to a Map (useful for saving data)
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'price': price,
      'imageURL': imageURL,
      'gradientColor': gradientColor, // Gradient should be properly handled when storing
    };
  }

  @override
  String toString() {
    return 'ProductModel(title: $title, price: $price, imageURL: $imageURL, gradientColor: $gradientColor)';
  }
}
