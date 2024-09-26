import 'package:food_order_test_code_app/core/common/logger_dev.dart';
import 'package:food_order_test_code_app/src/main_screen/data/models/cart_item_model.dart';
import 'package:hive/hive.dart';
import '../models/product_model.dart';
import '../../domain/entities/product.dart';
import '../../domain/entities/cart_item.dart';

abstract class LocalDataSource {
  Future<List<ProductModel>> getDefaultProducts();

  Future<List<CartItemModel>> getCartItems();

  Future<double> calculateTotalPrice();

  Future<void> addToCart(CartItemModel cartItem);

  Future<void> updateCartItemQuantity(Product product, int newQuantity);

  Future<void> removeFromCart(Product productId);

  Future<double> getTotalPriceFromHive();
}

class LocalDataSourceImpl implements LocalDataSource {
  final Box<ProductModel> productBox;
  final Box<CartItemModel> cartBox;

  LocalDataSourceImpl(this.productBox, this.cartBox);

  @override
  Future<List<ProductModel>> getDefaultProducts() async {
    List<ProductModel> products = [
      ProductModel(
        id: '1',
        name: 'Clasified Pizza',
        imageUrl: 'assets/icons/Pizza.png',
        description: 'Pizza is an Italian food that was created in Italy (The Naples area). It is made with different toppings. Some of the most common toppings are cheese, sausages, pepperoni, vegetables, tomatoes, spices and herbs and basil.',
        kcals: 300,
        proteins: 25,
        fats: 20,
        carbs: 40,
        grams: 200,
        price: 7.85,
      ),
      ProductModel(
        id: '2',
        name: 'Candies',
        imageUrl: 'assets/icons/Candies.png',
        description: 'The word candy entered the English language from the Old French çucre candi. The French term probably has earlier roots in the Arabic qandi, Persian qand and Sanskrit khanda, all words for sugar.',
        kcals: 250,
        proteins: 35,
        fats: 30,
        carbs: 80,
        grams: 250,
        price: 9.00,
      ),
      ProductModel(
        id: '3',
        name: 'Dessert',
        imageUrl: 'assets/icons/Dessert.png',
        description: 'Dessert is a course that concludes a meal. The course consists of sweet foods, such as cake, biscuit, ice cream and possibly a beverage such as dessert wine and liqueur.',
        kcals: 350,
        proteins: 50,
        fats: 90,
        carbs: 180,
        grams: 350,
        price: 12.00,
      ),
      ProductModel(
        id: '4',
        name: 'Fruit Salad',
        imageUrl: 'assets/icons/Fruits-Plate.png',
        description: 'Common ingredients used in fruit salads include strawberries, pineapple, honeydew, watermelon, grapes, and kiwifruit. Various recipes may call for the addition of nuts, fruit juices, certain vegetables, yogurt, or other ingredients.',
        kcals: 300,
        proteins: 130,
        fats: 20,
        carbs: 80,
        grams: 500,
        price: 18.00,
      ),
      ProductModel(
        id: '5',
        name: 'Grilled Chicken',
        imageUrl: 'assets/icons/Grilled-Chicken.png',
        description: 'One of the healthiest ways to prepare chicken is on the grill. The excess fat drops off, so you get a lean piece of protein that can be served with a side of vegetables. Very few nutrients are lost during the grilling process.',
        kcals: 250,
        proteins: 180,
        fats: 40,
        carbs: 100,
        grams: 500,
        price: 23.00,
      ),
      ProductModel(
        id: '6',
        name: 'Indian Chutney',
        imageUrl: 'assets/icons/Indian-Chutney.png',
        description: 'Coriander chutney—common in Indian cuisine. Dahi chutney—strained yogurt mixed into a chutney of mint and onions, popular in South India. Eromba—common in Manipuri cuisine.',
        kcals: 130,
        proteins: 80,
        fats: 50,
        carbs: 400,
        grams: 200,
        price: 17.00,
      ),
    ];
    return products;
  }

  @override
  Future<List<CartItemModel>> getCartItems() async {
    return cartBox.values.toList();
  }

  @override
  Future<double> calculateTotalPrice() async {
    double total = 0.0;

    for (var item in cartBox.values) {
      total += (item.product.price * item.quantity);
    }

    return total;
  }

  @override
  Future<void> addToCart(CartItemModel cartItem) async {
    // Get all cart items from the cartBox
    var cartItems = cartBox.values.toList();
    var index = cartItems.indexWhere((item) => item.product.id == cartItem.product.id);

    if (index != -1) {
      CartItemModel updatedItem = cartItems[index].copyWith(quantity: cartItem.quantity);
      await cartBox.putAt(index, updatedItem);
    } else {
      // If the product doesn't exist, add it as a new item
      await cartBox.put(cartItem.product.id, cartItem);
    }
  }

  @override
  Future<void> updateCartItemQuantity(Product product, int newQuantity) async {
    var cartItems = cartBox.values.toList();
    var index = cartItems.indexWhere((item) => item.product.id == product.id);

    if (index != -1) {
      if (newQuantity == 0) {
        // Remove item from cart if quantity is 0
        await cartBox.deleteAt(index);
      } else {
        // Otherwise, update the item quantity
        CartItemModel updatedItem = cartItems[index].copyWith(quantity: newQuantity);
        await cartBox.putAt(index, updatedItem);
      }
    }
  }

  @override
  Future<void> removeFromCart(Product product) async {
    await cartBox.delete(product.id);
  }

  @override
  Future<double> getTotalPriceFromHive() async {
    return await calculateTotalPrice();
  }
}
