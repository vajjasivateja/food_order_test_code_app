import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:food_order_test_code_app/core/common/logger_dev.dart';
import 'package:food_order_test_code_app/core/utils/failures.dart';
import 'package:food_order_test_code_app/src/main_screen/data/models/cart_item_model.dart';
import 'package:food_order_test_code_app/src/main_screen/data/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/add_to_cart.dart';
import '../../../domain/usecases/calculate_total_price.dart';
import '../../../domain/usecases/get_cart_items.dart';
import '../../../domain/usecases/remove_from_cart.dart';
import '../../../domain/usecases/update_cart_item_quantity.dart';

part 'cart_state.dart';

part 'cart_event.dart';

part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartItems getCartItems;
  final AddToCart addToCart;
  final RemoveFromCart removeFromCart;
  final CalculateTotalPrice calculateTotalPrice;
  final UpdateCartItemQuantity updateCartItemQuantity;

  CartBloc({
    required this.getCartItems,
    required this.addToCart,
    required this.removeFromCart,
    required this.calculateTotalPrice,
    required this.updateCartItemQuantity,
  }) : super(const CartState.initial()) {
    on<CartEvent>(
      (event, emit) async {
        await event.when(
          loadCartItems: () async {
            emit(const CartState.loading());

            try {
              final result = await getCartItems();
              await result.fold(
                (failure) async {
                  emit(CartState.error(failure));
                  logger.e("loadCartItems Failed to load cart items: $failure");
                },
                (items) async {
                  logger.d("loadCartItems Loaded cart items: $items");

                  final totalResult = await calculateTotalPrice();

                  await totalResult.fold(
                    (failure) async {
                      emit(CartState.error(failure));
                      logger.e("loadCartItems Failed to calculate total price: $failure");
                    },
                    (totalPrice) async {
                      logger.d("loadCartItems Calculated total price: $totalPrice");
                      emit(CartState.loaded(items, totalPrice));
                    },
                  );
                },
              );
            } catch (e) {
              logger.e("Unexpected error in loadCartItems: $e");
              // emit(CartState.error(Failure.custom("Unexpected error")));
            }
          },
          addToCart: (ProductModel product, int quantity) async {
            try {
              final result = await addToCart(product.toEntity(), quantity);
              await result.fold(
                (failure) async {
                  emit(CartState.error(failure));
                },
                (value) async {
                  emit(const CartState.addItemSuccess(true));
                },
              );
            } catch (e) {
              logger.e("Error adding to cart: $e");
            }
          },
          updateCartItemQuantity: (product, newQuantity) async {
            logger.d("updateCartItemQuantity called");
            final result = await updateCartItemQuantity(product.toEntity(), newQuantity);
            await result.fold(
              (failure) async => emit(CartState.error(failure)),
              (_) async {
                final totalResult = await calculateTotalPrice();
                await totalResult.fold(
                  (failure) async => emit(CartState.error(failure)),
                  (totalPrice) async {
                    final itemsResult = await getCartItems();
                    await itemsResult.fold(
                      (failure) async => emit(CartState.error(failure)),
                      (items) async {
                        logger.d("updateCartItemQuantity items: ${items}");
                        emit(CartState.loaded(items, totalPrice));
                      },
                    );
                  },
                );
              },
            );
          },
          removeFromCart: (ProductModel product) async {
            try {
              final result = await removeFromCart(product.toEntity());
              await result.fold(
                (failure) async {
                  emit(CartState.error(failure));
                },
                (_) async {
                  emit(const CartState.removeItemSuccess(true));
                },
              );
            } catch (e) {
              logger.e("Error removing from cart: $e");
            }
          },
          calculateTotalPrice: () async {
            final totalResult = await calculateTotalPrice();
            await totalResult.fold(
              (failure) async {
                emit(CartState.error(failure));
              },
              (totalPrice) async {
                final itemsResult = await getCartItems();
                await itemsResult.fold(
                  (failure) async {
                    emit(CartState.error(failure));
                  },
                  (items) async {
                    emit(CartState.loaded(items, totalPrice));
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
