import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_order_test_code_app/core/common/common_ui.dart';
import 'package:food_order_test_code_app/core/common/logger_dev.dart';
import 'package:food_order_test_code_app/core/common/widgets/title_text.dart';
import 'package:food_order_test_code_app/core/resourse/app_colors.dart';
import 'package:food_order_test_code_app/src/main_screen/data/models/product_model.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.productModel, required this.onProductAddedToCart});

  final ProductModel productModel;
  final Function(int quantity) onProductAddedToCart;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                commonDivider(height: 30),
                Center(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    color: Colors.transparent,
                    elevation: 5,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 100,
                      child: Image.asset(
                        widget.productModel.imageUrl,
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),
                ),
                commonDivider(height: 30),
                TitleText(text: widget.productModel.name),
                commonDivider(height: 20),
                Text(
                  widget.productModel.description,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                commonDivider(height: 20),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.borderSecondary,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      foodDetailsWidget(title: "kcal", value: "${widget.productModel.kcals}"),
                      foodDetailsWidget(title: "grams", value: "${widget.productModel.grams}"),
                      foodDetailsWidget(title: "proteins", value: "${widget.productModel.proteins}"),
                      foodDetailsWidget(title: "fats", value: "${widget.productModel.fats}"),
                      foodDetailsWidget(title: "carbs", value: "${widget.productModel.carbs}"),
                    ],
                  ),
                ),
                commonDivider(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Add in poke",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.black, fontWeight: FontWeight.w700),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: AppColors.black,
                    ),
                  ],
                ),
                commonDivider(height: 30),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
              decoration: BoxDecoration(color: AppColors.borderPrimary, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.remove, size: 20, color: AppColors.black),
                    onPressed: () {
                      if (quantity > 0) {
                        setState(() {
                          quantity = quantity - 1;
                        });
                      }else{
                        logger.d("pressed <0");
                      }
                    },
                  ),
                  Text(
                    "$quantity",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppColors.black),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.add,
                      size: 20,
                      color: AppColors.black,
                    ),
                    onPressed: () {
                      setState(() {
                        quantity = quantity + 1;
                      });
                    },
                  ),
                ],
              ),
            ),
            commonVerticalDivider(width: 30),
            ElevatedButton(
              onPressed: () {
                widget.onProductAddedToCart(quantity);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.black,
                foregroundColor: AppColors.white,
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(text: "Add to card ", style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppColors.white)),
                    const TextSpan(text: "  "),
                    TextSpan(
                      text: "\$${(widget.productModel.price).toStringAsFixed(2)}",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppColors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget foodDetailsWidget({required String title, required String value}) {
    return Expanded(
      flex: 1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.black, fontWeight: FontWeight.w900),
          ),
          commonDivider(height: 10),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.gray),
          )
        ],
      ),
    );
  }
}
