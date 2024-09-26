import 'package:dartz/dartz.dart';
import 'package:food_order_test_code_app/core/utils/failures.dart';
import 'package:food_order_test_code_app/src/main_screen/domain/entities/product.dart';
import 'package:food_order_test_code_app/src/main_screen/domain/repositories/product_repository.dart';

class RemoveFromCart {
  final ProductRepository repository;

  RemoveFromCart(this.repository);

  Future<Either<Failure, void>> call(Product product) {
    return repository.removeFromCart(product);
  }
}