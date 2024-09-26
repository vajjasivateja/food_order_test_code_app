part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;

  const factory CartState.loading() = _Loading;
  const factory CartState.addItemSuccess(bool addSuccess) = _AddItemSuccess;
  const factory CartState.removeItemSuccess(bool addSuccess) = _RemoveItemSuccess;

  const factory CartState.loaded(List<CartItemModel> items, double totalPrice) =
      _Loaded;
  const factory CartState.totalPrice(double totalPrice) = _TotalPrice;

  const factory CartState.error(Failure failure) = _Error;
}
