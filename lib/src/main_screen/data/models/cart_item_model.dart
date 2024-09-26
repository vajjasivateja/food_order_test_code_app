import 'package:hive_flutter/hive_flutter.dart';
import '../../domain/entities/cart_item.dart';
import 'product_model.dart';

part 'cart_item_model.g.dart';

@HiveType(typeId: 1)
class CartItemModel {
  @HiveField(0)
  final ProductModel product;

  @HiveField(1)
  final int quantity;

  CartItemModel({
    required this.product,
    required this.quantity,
  });

  // Factory constructor to create a CartItemModel from a CartItem
  factory CartItemModel.fromEntity(CartItem cartItem) {
    return CartItemModel(
      product: ProductModel.fromEntity(cartItem.product),
      quantity: cartItem.quantity,
    );
  }

  // Method to convert CartItemModel back to CartItem
  CartItem toEntity() {
    return CartItem(
      product: product.toEntity(),
      quantity: quantity,
    );
  }

  CartItemModel copyWith({
    ProductModel? product,
    int? quantity,
  }) {
    return CartItemModel(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
    );
  }
}
