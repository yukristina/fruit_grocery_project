import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ['Apple', '4.12', 'lib/assets/apple.png', Colors.red],
    ['Cherries', '8.12', 'lib/assets/cherries.png', Colors.pink],
    ['Dragon Fruit', '12.50', 'lib/assets/dragon-fruit.png', Colors.red],
    ['Grapes', '2.57', 'lib/assets/grapes.png', Colors.purple],
    ['Mango', '8.12', 'lib/assets/mango.png', Colors.yellow],
    ['Orange', '6.13', 'lib/assets/orange.png', Colors.orange],
    ['Passion Fruit', '10.00', 'lib/assets/passion-fruit.png', Colors.purple],
    ['Strawberry', '4.52', 'lib/assets/strawberry.png', Colors.red],
    ['Watermelon', '7.12', 'lib/assets/watermelon.png', Colors.red],
  ];

  List _cartItems = [];

  get shoptItems => _shopItems;

  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
}
