import 'package:dartz/dartz.dart';
import 'package:food_order_test_code_app/src/main_screen/data/models/cart_item_model.dart';
import '../../../../core/utils/failures.dart';
import '../../data/models/product_model.dart';
import '../entities/cart_item.dart';
import '../entities/product.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<ProductModel>>> getDefaultProducts();
  Future<Either<Failure, List<CartItemModel>>> getCartItems();
  Future<Either<Failure, void>> addToCart(Product product, int quantity);
  Future<Either<Failure, void>> updateCartItemQuantity(Product product, int newQuantity);
  Future<Either<Failure, double>> getTotalPrice();
  Future<Either<Failure, void>> removeFromCart(Product product);
  Future<double> calculateTotalPrice();
  Future<Either<Failure, double>> getTotalPriceFromHive();
}
