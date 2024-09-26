import 'package:flutter/material.dart';
import 'package:food_order_test_code_app/core/common/models/product_slider_model.dart';

import '../../../../core/common/common_ui.dart';
import '../../../../core/resourse/app_colors.dart';

class ProductSliderItem extends StatefulWidget {
  const ProductSliderItem({super.key, required this.sliderProductModel});

  final SliderProductModel sliderProductModel;

  @override
  State<ProductSliderItem> createState() => _ProductSliderItemState();
}

class _ProductSliderItemState extends State<ProductSliderItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Container(
              height: 280,
              decoration: BoxDecoration(
                gradient: widget.sliderProductModel.gradientColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Spacer(),
                  Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            // Limits the width of the Text widget
                            child: Text(
                              widget.sliderProductModel.title,
                              style: Theme.of(context).textTheme.titleLarge,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis, // Optional, to handle long text
                            ),
                          ),
                          commonVerticalDivider(width: 20),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.black,
                              foregroundColor: AppColors.white,
                              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: Text("\$${(widget.sliderProductModel.price).toStringAsFixed(2)}"),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: Image.asset(
              widget.sliderProductModel.imageURL,
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
