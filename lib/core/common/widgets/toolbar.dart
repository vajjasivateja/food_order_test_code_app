import 'package:flutter/material.dart';
import 'package:food_order_test_code_app/core/resourse/app_colors.dart';

class CustomToolBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomToolBar({
    super.key,
    required this.onMenuPressed,
    required this.onSearchPressed,
  });

  final Function() onMenuPressed;
  final Function() onSearchPressed;

  @override
  State<CustomToolBar> createState() => _CustomToolBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}

class _CustomToolBarState extends State<CustomToolBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      margin: const EdgeInsets.only(top: 60),
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
      height: 70,
      alignment: Alignment.center,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: widget.onMenuPressed,
            icon: const Icon(
              Icons.menu,
              size: 20,
            ),
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.black,
                foregroundColor: AppColors.white,
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Hitec City",
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: AppColors.white),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(360),
                    ),
                  ),
                  Text(
                    "25 mins",
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: AppColors.white),
                  ),
                ],
              )),
          IconButton(
            onPressed: widget.onSearchPressed,
            icon: const Icon(
              Icons.search,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
