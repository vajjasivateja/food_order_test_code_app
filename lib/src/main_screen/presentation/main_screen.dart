import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_order_test_code_app/core/common/common_ui.dart';
import 'package:food_order_test_code_app/core/common/logger_dev.dart';
import 'package:food_order_test_code_app/core/di/injection_service.dart';
import 'package:food_order_test_code_app/core/resourse/app_colors.dart';
import 'package:food_order_test_code_app/src/main_screen/data/models/cart_item_model.dart';
import 'package:food_order_test_code_app/src/main_screen/data/models/product_model.dart';
import 'package:food_order_test_code_app/src/main_screen/presentation/bloc/cart/cart_bloc.dart';
import 'package:food_order_test_code_app/src/main_screen/presentation/bloc/product/product_bloc.dart';
import 'package:food_order_test_code_app/src/main_screen/presentation/widgets/product_details.dart';
import 'package:food_order_test_code_app/src/main_screen/presentation/widgets/product_item.dart';
import 'package:food_order_test_code_app/src/main_screen/presentation/widgets/product_slider_item.dart';
import 'package:food_order_test_code_app/src/main_screen/presentation/widgets/products_cart.dart';

import '../../../core/common/models/product_slider_model.dart';
import '../../../core/common/widgets/title_text.dart';
import '../../../core/common/widgets/toolbar.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final productBloc = serviceLocator<ProductBloc>();
  final cartBloc = serviceLocator<CartBloc>();
  late PageController _pageController;
  List<String> options = ['Salads', 'Pizza', 'Beverages', 'Snacks', 'Juices', 'Ice Creams'];
  String? selectedOption;
  List<ProductModel> productsList = [];
  List<SliderProductModel> sliderProductsList = [];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1, keepPage: true);
    addSliderProductsList();
    fetchProductsList();
  }

  void fetchProductsList() async {
    productBloc.add(const ProductEvent.loadDefaultProducts());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductBloc>(create: (context) => productBloc),
        BlocProvider<CartBloc>(create: (context) => cartBloc),
      ],
      child: BlocListener<CartBloc, CartState>(
        listener: (context, state) {
          logger.d("CartBloc: State:  $state");
          state.whenOrNull(
            loading: () {
              logger.e("CartBloc: loading");
            },
            addItemSuccess: (isAddedSuccess) {
              if (isAddedSuccess) {
                logger.d("CartBloc: loaded triggered");
                Navigator.pop(context);
                cartBloc.add(const CartEvent.loadCartItems());
              }
            },
            loaded: (items, totalPrice) {
              logger.e("CartBloc: loaded with items");
              showCartSnackBar(items, totalPrice);
            },
            error: (failure) {
              logger.e("CartBloc: error occurred - $failure");
            },
          );
        },
        child: Scaffold(
          appBar: CustomToolBar(
            onMenuPressed: () {},
            onSearchPressed: () {},
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                commonDivider(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: TitleText(
                    text: "Hits of the week",
                  ),
                ),
                commonDivider(height: 30),
                Column(
                  children: [
                    SizedBox(
                      height: 300,
                      child: PageView.builder(
                          controller: _pageController,
                          itemCount: sliderProductsList.length,
                          onPageChanged: (index) async {
                            setState(() {
                              // currentPageIndex = index.toDouble();
                              // logger.d("currentPageIndex: $currentPageIndex");
                            });
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 20),
                              child: ProductSliderItem(
                                sliderProductModel: sliderProductsList[index],
                              ),
                            );
                          }),
                    ),
                    commonDivider(height: 30),
                    SmoothPageIndicator(
                      controller: _pageController,
                      count: 4,
                      effect: const JumpingDotEffect(
                        dotHeight: 7,
                        dotWidth: 60,
                        spacing: 10,
                        activeDotColor: AppColors.black,
                        dotColor: AppColors.gray,
                      ),
                    ),
                  ],
                ),
                commonDivider(height: 30),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                            backgroundColor: AppColors.borderPrimary,
                            foregroundColor: AppColors.black,
                            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            )),
                        child: const Icon(
                          Icons.sort,
                          size: 20,
                        ),
                      ),
                    ),
                    commonVerticalDivider(width: 10),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: options.map((option) {
                            return Row(
                              children: [
                                ChoiceChip(
                                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                  showCheckmark: false,
                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  selected: selectedOption == option,
                                  onSelected: (selected) {
                                    setState(() {
                                      selectedOption = selected ? option : null; // Toggle selection
                                    });
                                  },
                                  label: Text(
                                    option,
                                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                          color: AppColors.black,
                                          fontWeight: selectedOption == option ? FontWeight.w900 : FontWeight.w600,
                                        ),
                                  ),
                                  selectedColor: AppColors.borderPrimary,
                                  backgroundColor: AppColors.borderPrimary,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: selectedOption == option ? AppColors.borderPrimary : AppColors.borderPrimary,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                commonVerticalDivider(width: 10),
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
                commonDivider(height: 30),
                BlocConsumer<ProductBloc, ProductState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      loading: () {},
                      getProductsList: (products) {
                        productsList.addAll(products);
                      },
                      error: (failure) {},
                    );
                  },
                  builder: (context, state) {
                    return ListView.separated(
                      separatorBuilder: (context, index) {
                        return commonDivider(height: 20);
                      },
                      itemCount: productsList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ProductItem(
                            productModel: productsList[index],
                            onProductSelected: () {
                              showProductDetailsBottomSheet(context, productsList[index], cartBloc);
                            });
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showCartSnackBar(List<CartItemModel> cartItems, double totalPrice) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.black,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        content: GestureDetector(
          onTap: () {
            showCartListBottomSheet(context);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cart",
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppColors.white, fontWeight: FontWeight.w700),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "25 mins",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(color: AppColors.white, fontWeight: FontWeight.w700),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.white, fontWeight: FontWeight.w700),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showCartListBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      showDragHandle: true,
      shape: Theme.of(context).bottomSheetTheme.shape,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 1,
          minChildSize: 0.5,
          maxChildSize: 1,
          expand: false,
          builder: (context, scrollController) {
            return Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ProductsCart(),
            );
          },
        );
      },
    );
  }

  void showProductDetailsBottomSheet(BuildContext context, ProductModel product, cartBloc) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      showDragHandle: true,
      shape: Theme.of(context).bottomSheetTheme.shape,
      builder: (context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.9,
          minChildSize: 0.5,
          maxChildSize: 0.9,
          expand: false,
          builder: (context, scrollController) {
            return Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ProductDetails(
                productModel: product,
                onProductAddedToCart: (int quantity) {
                  if (quantity > 0) {
                    cartBloc.add(CartEvent.addToCart(product, quantity));
                  }
                },
              ),
            );
          },
        );
      },
    );
  }

  List<SliderProductModel> addSliderProductsList() {
    sliderProductsList.add(
      SliderProductModel(
        title: "Pizza",
        price: 12.20,
        imageURL: "assets/icons/Pizza.png",
        gradientColor: const LinearGradient(
          colors: [
            AppColors.secondary, // Start color
            AppColors.accent, // End color
          ],
          begin: Alignment.centerLeft, // Start point
          end: Alignment.centerRight, // End point
        ),
      ),
    );
    sliderProductsList.add(
      SliderProductModel(
        title: "Soup",
        price: 15.50,
        imageURL: "assets/icons/Soup.png",
        gradientColor: const LinearGradient(
          colors: [
            Color(0xFF508C9B),
            Color(0xFF134B70),
          ],
          begin: Alignment.centerLeft, // Start point
          end: Alignment.centerRight, // End point
        ),
      ),
    );
    sliderProductsList.add(
      SliderProductModel(
        title: "Dessert",
        price: 17.70,
        imageURL: "assets/icons/Dessert2.png",
        gradientColor: const LinearGradient(
          colors: [
            Color(0xFFD2FF72),
            Color(0xFF15B392),
          ],
          begin: Alignment.centerLeft, // Start point
          end: Alignment.centerRight, // End point
        ),
      ),
    );
    sliderProductsList.add(
      SliderProductModel(
        title: "Cookie",
        price: 8.90,
        imageURL: "assets/icons/Cookie.png",
        gradientColor: const LinearGradient(
          colors: [
            Color(0xFFEBD3F8),
            Color(0xFF7A1CAC),
          ],
          begin: Alignment.centerLeft, // Start point
          end: Alignment.centerRight, // End point
        ),
      ),
    );
    return sliderProductsList;
  }
}
