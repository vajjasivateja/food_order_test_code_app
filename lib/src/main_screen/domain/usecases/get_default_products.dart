import 'package:dartz/dartz.dart';
import 'package:food_order_test_code_app/core/utils/failures.dart';
import 'package:food_order_test_code_app/src/main_screen/data/models/product_model.dart';
import 'package:food_order_test_code_app/src/main_screen/domain/repositories/product_repository.dart';

class GetDefaultProducts {
  final ProductRepository repository;

  GetDefaultProducts(this.repository);

  Future<Either<Failure, List<ProductModel>>> call() {
    return repository.getDefaultProducts();
  }
}