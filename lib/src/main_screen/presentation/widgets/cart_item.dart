import 'package:flutter/material.dart';
import 'package:food_order_test_code_app/core/common/logger_dev.dart';

import '../../../../core/common/common_ui.dart';
import '../../../../core/resourse/app_colors.dart';
import '../../data/models/cart_item_model.dart';

class ProductCartItem extends StatefulWidget {
  const ProductCartItem({
    super.key,
    required this.cartItems,
    required this.onAddPressed,
    required this.onRemovePressed,
  });

  final CartItemModel cartItems;
  final Function(int quantity) onAddPressed;
  final Function(int quantity) onRemovePressed;

  @override
  State<ProductCartItem> createState() => _ProductCartItemState();
}

class _ProductCartItemState extends State<ProductCartItem> {
  int newQuantity = 1;
  @override
  void initState() {
    super.initState();
    logger.d("newQuantity: ${widget.cartItems.quantity}");
    newQuantity = widget.cartItems.quantity;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(100), // Large radius for circular shape
            ),
            color: Colors.transparent,
            elevation: 5,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 60,
              child: Image.asset(
                widget.cartItems.product.imageUrl,
                width: 120,
                height: 120,
              ),
            ),
          ),
          commonVerticalDivider(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        widget.cartItems.product.name,
                        style: Theme.of(context).textTheme.titleMedium,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    commonVerticalDivider(width: 20),
                    Text(
                      "\$${(newQuantity * widget.cartItems.product.price).toStringAsFixed(2)}",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.black, fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
                commonDivider(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {
                        newQuantity = newQuantity - 1;
                        widget.onRemovePressed(newQuantity);
                      },
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
                        "$newQuantity",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    commonVerticalDivider(width: 5),
                    GestureDetector(
                      onTap: () {
                        newQuantity = newQuantity + 1;
                        widget.onAddPressed(newQuantity);
                      },
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
