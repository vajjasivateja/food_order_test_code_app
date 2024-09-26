import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_order_test_code_app/core/common/common_ui.dart';
import 'package:food_order_test_code_app/core/common/widgets/title_text.dart';
import 'package:food_order_test_code_app/core/resourse/app_colors.dart';
import 'package:food_order_test_code_app/src/main_screen/presentation/bloc/cart/cart_bloc.dart';
import 'package:food_order_test_code_app/src/main_screen/presentation/widgets/cart_item.dart';

import '../../../../core/common/logger_dev.dart';
import '../../../../core/di/injection_service.dart';
import '../../data/models/cart_item_model.dart';

class ProductsCart extends StatefulWidget {
  const ProductsCart({
    super.key,
  });

  @override
  State<ProductsCart> createState() => _ProductsCartState();
}

class _ProductsCartState extends State<ProductsCart> {
  int newCutleryQuantity = 1;
  double totalPrice = 0;
  List<CartItemModel> cartItems = [];
  final cartBloc = serviceLocator<CartBloc>();

  @override
  void initState() {
    super.initState();
    fetchCartList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => cartBloc,
      child: BlocConsumer<CartBloc, CartState>(
        listener: (context, state) {
          state.whenOrNull(
            addItemSuccess: (addSuccess) {
              fetchCartList();
            },
            removeItemSuccess: (addSuccess) {
              fetchCartList();
            },
            loaded: (items, totalPrice) {
              cartItems.clear();
              if (items.isNotEmpty) {
                cartItems.addAll(items);
                this.totalPrice = totalPrice;
                logger.e("loaded with totalPrice: $totalPrice");
              } else {
                Navigator.pop(context);
              }
            },
            error: (failure) {
              logger.e("CartBloc: error occurred - $failure");
            },
          );
        },
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const TitleText(
                          text: "We will deliver in 24 minutes to the address"),
                      commonDivider(height: 20),
                      Row(
                        children: [
                          Text(
                            "Hitech City",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          commonVerticalDivider(width: 20),
                          Text(
                            "Change address",
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                      commonDivider(height: 30),
                      ListView.separated(
                        separatorBuilder: (context, index) {
                          return commonDivider(height: 20);
                        },
                        itemCount: cartItems.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ProductCartItem(
                            cartItems: cartItems[index],
                            onAddPressed: (int newQuantity) {
                              cartBloc.add(CartEvent.addToCart(
                                  cartItems[index].product, newQuantity));
                            },
                            onRemovePressed: (int newQuantity) {
                              if (newQuantity > 0) {
                                cartBloc.add(CartEvent.addToCart(
                                    cartItems[index].product, newQuantity));
                              } else {
                                cartBloc.add(CartEvent.removeFromCart(
                                    cartItems[index].product));
                              }
                            },
                          );
                        },
                      ),
                      commonDivider(
                          height: 1, thickness: 1, color: AppColors.light),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            commonVerticalDivider(width: 20),
                            Image.asset(
                              "assets/icons/cutlery.png",
                              width: 20,
                              height: 20,
                            ),
                            commonVerticalDivider(width: 20),
                            Expanded(
                              child: Text(
                                "Cutlery",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.borderPrimary,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: const Icon(
                                      Icons.remove,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                commonVerticalDivider(width: 5),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "1",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                                commonVerticalDivider(width: 5),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.borderPrimary,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: const Icon(
                                      Icons.add,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      commonDivider(
                          height: 1, thickness: 1, color: AppColors.light),
                    ],
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      commonDivider(height: 10),
                      Text(
                        "Free delivery from \$30",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  Text(
                    "\$25.00",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.black, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              commonDivider(height: 60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Payment method",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  commonDivider(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/apple_pay_card.png",
                        width: 30,
                        height: 30,
                      ),
                      commonVerticalDivider(width: 20),
                      Expanded(
                        child: Text(
                          "Apple Pay",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        size: 30,
                      )
                    ],
                  )
                ],
              ),
              commonDivider(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                // decoration: BoxDecoration(color: AppColors.black, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Pay",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                    Row(
                      children: [
                        Text(
                          "25 mins",
                          style:
                              Theme.of(context).textTheme.labelLarge?.copyWith(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(360),
                          ),
                        ),
                        Text(
                          "\$${(totalPrice).toStringAsFixed(2)}",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w700),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }

  void fetchCartList() {
    logger.d("fetchCartList");
    cartBloc.add(const CartEvent.loadCartItems());
  }
}
