import 'package:bloc/bloc.dart';
import 'package:food_order_test_code_app/core/utils/failures.dart';
import 'package:food_order_test_code_app/src/main_screen/data/models/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/get_default_products.dart';

part 'product_state.dart';

part 'product_event.dart';

part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetDefaultProducts getDefaultProducts;

  ProductBloc({required this.getDefaultProducts}) : super(const ProductState.initial()) {
    on<ProductEvent>((event, emit) async {
      await event.map(
        loadDefaultProducts: (e) async {
          emit(const ProductState.loading());
          final result = await getDefaultProducts();
          emit(result.fold(
            (failure) => ProductState.error(failure),
            (products) => ProductState.getProductsList(products),
          ));
        },
      );
    });
  }
}
