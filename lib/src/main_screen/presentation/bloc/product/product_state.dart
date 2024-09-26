part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;

  const factory ProductState.loading() = _Loading;

  const factory ProductState.getProductsList(List<ProductModel> products) = _GetProductsList;

  const factory ProductState.error(Failure failure) = _Error;
}
