

import 'package:dartz/dartz.dart';
import 'package:food_order_test_code_app/core/utils/failures.dart';
import 'package:food_order_test_code_app/src/main_screen/data/models/cart_item_model.dart';
import 'package:food_order_test_code_app/src/main_screen/domain/repositories/product_repository.dart';

class GetCartItems {
  final ProductRepository repository;

  GetCartItems(this.repository);

  Future<Either<Failure, List<CartItemModel>>> call() {
    return repository.getCartItems();
  }
}