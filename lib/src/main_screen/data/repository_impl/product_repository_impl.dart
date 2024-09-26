import 'package:food_order_test_code_app/core/common/logger_dev.dart';
import 'package:food_order_test_code_app/src/main_screen/data/data_store/local_data_source.dart';
import 'package:food_order_test_code_app/src/main_screen/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/utils/failures.dart';
import '../../domain/entities/product.dart';
import '../models/cart_item_model.dart';
import '../models/product_model.dart';

class ProductRepositoryImpl implements ProductRepository {
  final LocalDataSource dataStore;

  ProductRepositoryImpl(this.dataStore);

  @override
  Future<Either<Failure, List<ProductModel>>> getDefaultProducts() async {
    try {
      final products = await dataStore.getDefaultProducts();
      return Right(products);
    } catch (e) {
      return Left(DatabaseFailure('Failed to load products'));
    }
  }

  @override
  Future<Either<Failure, List<CartItemModel>>> getCartItems() async {
    try {
      final cartItems = await dataStore.getCartItems();
      return Right(cartItems);
    } catch (e) {
      return Left(DatabaseFailure('Failed to load cart items'));
    }
  }

  @override
  Future<Either<Failure, void>> addToCart(Product product, int quantity) async {
    try {
      final cartItem = CartItemModel(product: ProductModel.fromEntity(product), quantity: quantity);
      await dataStore.addToCart(cartItem);
      return const Right(null);
    } catch (e) {
      return Left(DatabaseFailure('Failed to add item to cart'));
    }
  }

  @override
  Future<Either<Failure, void>> updateCartItemQuantity(Product product, int newQuantity) async {
    try {
      await dataStore.updateCartItemQuantity(product, newQuantity);
      return const Right(null);
    } catch (e) {
      return Left(DatabaseFailure('Failed to update item to cart')); // Customize failure handling
    }
  }

  @override
  Future<Either<Failure, double>> getTotalPrice() async {
    try {
      final total = await dataStore.calculateTotalPrice();
      return Right(total);
    } catch (e) {
      return Left(DatabaseFailure('Failed to calculate total price'));
    }
  }

  @override
  Future<Either<Failure, void>> removeFromCart(Product product) async {
    try {
      await dataStore.removeFromCart(product);
      return const Right(null);
    } catch (e) {
      return Left(DatabaseFailure('Failed to remove item from cart'));
    }
  }

  @override
  Future<double> calculateTotalPrice() async {
    return await dataStore.calculateTotalPrice();
  }

  @override
  Future<Either<Failure, double>> getTotalPriceFromHive() async {
    try {
      final totalPrice = await dataStore.getTotalPriceFromHive();
      return Right(totalPrice);
    } catch (e) {
      return Left(DatabaseFailure('Failed to get total price from Hive'));
    }
  }
}
