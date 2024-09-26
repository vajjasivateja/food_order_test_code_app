import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required String id,
    required String name,
    required String imageUrl,
    required String description,
    required double kcals,
    required double proteins,
    required double fats,
    required double carbs,
    required double grams,
    required double price,
  }) = _Product;
}
