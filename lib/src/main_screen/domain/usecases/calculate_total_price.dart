import 'package:dartz/dartz.dart';
import 'package:food_order_test_code_app/core/utils/failures.dart';
import 'package:food_order_test_code_app/src/main_screen/domain/repositories/product_repository.dart';

class CalculateTotalPrice {
  final ProductRepository repository;

  CalculateTotalPrice(this.repository);

  Future<Either<Failure, double>> call() {
    return repository.getTotalPrice();
  }
}