import 'package:hive_flutter/hive_flutter.dart';
import '../../domain/entities/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.g.dart';

@HiveType(typeId: 0)
class ProductModel {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String imageUrl;

  @HiveField(3)
  final String description;

  @HiveField(4)
  final double kcals;

  @HiveField(5)
  final double proteins;

  @HiveField(6)
  final double fats;

  @HiveField(7)
  final double carbs;

  @HiveField(8)
  final double grams;

  @HiveField(9)
  final double price;

  ProductModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
    required this.kcals,
    required this.proteins,
    required this.fats,
    required this.carbs,
    required this.grams,
    required this.price,
  });

  // Factory constructor to create a ProductModel from a Product
  factory ProductModel.fromEntity(Product product) {
    return ProductModel(
      id: product.id,
      name: product.name,
      imageUrl: product.imageUrl,
      description: product.description,
      kcals: product.kcals,
      proteins: product.proteins,
      fats: product.fats,
      carbs: product.carbs,
      grams: product.grams,
      price: product.price,
    );
  }

  // Method to convert ProductModel back to Product
  Product toEntity() {
    return Product(
      id: id,
      name: name,
      imageUrl: imageUrl,
      description: description,
      kcals: kcals,
      proteins: proteins,
      fats: fats,
      carbs: carbs,
      grams: grams,
      price: price,
    );
  }
}
