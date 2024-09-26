part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.loadCartItems() = _LoadCartItems;

  const factory CartEvent.addToCart(ProductModel product, int quantity) = _AddToCart;

  const factory CartEvent.updateCartItemQuantity(ProductModel product, int newQuantity) = _UpdateCartItemQuantity;

  const factory CartEvent.removeFromCart(ProductModel product) = _RemoveFromCart;

  const factory CartEvent.calculateTotalPrice() = _CalculateTotalPrice;
}
