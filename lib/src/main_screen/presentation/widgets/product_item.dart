import 'package:flutter/material.dart';
import 'package:food_order_test_code_app/core/common/common_ui.dart';
import 'package:food_order_test_code_app/core/resourse/app_colors.dart';
import 'package:food_order_test_code_app/src/main_screen/data/models/product_model.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({
    super.key,
    required this.productModel,
    required this.onProductSelected,
  });

  final ProductModel productModel;
  final Function() onProductSelected;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: widget.onProductSelected,
        child: Row(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              color: Colors.transparent,
              elevation: 5,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 60,
                child: Image.asset(
                  widget.productModel.imageUrl,
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
                  Text(
                    widget.productModel.name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              backgroundColor: AppColors.borderPrimary,
                              foregroundColor: AppColors.black,
                              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              )),
                          child: Center(
                            child: Text(
                              "\$${(widget.productModel.price).toStringAsFixed(2)}",
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.black, fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      commonVerticalDivider(width: 20),
                      Text(
                        "${widget.productModel.kcals}Kcal",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.gray),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
