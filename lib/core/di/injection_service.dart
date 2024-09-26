import 'package:food_order_test_code_app/src/main_screen/data/repository_impl/product_repository_impl.dart';
import 'package:food_order_test_code_app/src/main_screen/domain/usecases/add_to_cart.dart';
import 'package:food_order_test_code_app/src/main_screen/domain/usecases/calculate_total_price.dart';
import 'package:food_order_test_code_app/src/main_screen/domain/usecases/get_cart_items.dart';
import 'package:food_order_test_code_app/src/main_screen/domain/usecases/get_default_products.dart';
import 'package:food_order_test_code_app/src/main_screen/domain/usecases/remove_from_cart.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../src/main_screen/data/data_store/local_data_source.dart';
import '../../src/main_screen/data/models/cart_item_model.dart';
import '../../src/main_screen/data/models/product_model.dart';
import '../../src/main_screen/domain/repositories/product_repository.dart';
import '../../src/main_screen/domain/usecases/update_cart_item_quantity.dart';
import '../../src/main_screen/presentation/bloc/cart/cart_bloc.dart';
import '../../src/main_screen/presentation/bloc/product/product_bloc.dart';

final serviceLocator = GetIt.instance;

Future<void> initializeDependencies() async {
  // Initialize Hive
  await Hive.initFlutter();
  Hive.registerAdapter(CartItemModelAdapter());
  Hive.registerAdapter(ProductModelAdapter());
  // Register Hive boxes
  serviceLocator
    ..registerSingleton<Box<ProductModel>>(
        await Hive.openBox<ProductModel>('products'))
    ..registerSingleton<Box<CartItemModel>>(
        await Hive.openBox<CartItemModel>('cart'))
    ..registerLazySingleton<LocalDataSource>(
      () => LocalDataSourceImpl(
        serviceLocator<Box<ProductModel>>(),
        serviceLocator<Box<CartItemModel>>(),
      ),
    )
    ..registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(serviceLocator<LocalDataSource>()),
    )
    ..registerLazySingleton(() => GetDefaultProducts(serviceLocator()))
    ..registerFactory(() => ProductBloc(getDefaultProducts: serviceLocator()))
    ..registerLazySingleton(() => GetCartItems(serviceLocator()))
    ..registerLazySingleton(() => AddToCart(serviceLocator()))
    ..registerLazySingleton(() => RemoveFromCart(serviceLocator()))
    ..registerLazySingleton(() => CalculateTotalPrice(serviceLocator()))
    ..registerLazySingleton(() => UpdateCartItemQuantity(serviceLocator()))
    ..registerFactory(
      () => CartBloc(
        getCartItems: serviceLocator(),
        addToCart: serviceLocator(),
        removeFromCart: serviceLocator(),
        calculateTotalPrice: serviceLocator(),
        updateCartItemQuantity: serviceLocator(),
      ),
    );
}
