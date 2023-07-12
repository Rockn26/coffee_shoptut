import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeShop extends ChangeNotifier{

  // coffee list
  final List<Coffee> _shop = [
    Coffee(name: 'Americano', price: '3.30', imagePath: 'lib/images/black.png'),
    Coffee(name: "Latte", price: "3.50", imagePath: "lib/images/latte.png"),
    Coffee(name: "Espresso", price: "3.40", imagePath: "lib/images/espresso.png"),
    Coffee(name: "Ice Coffee", price: "3.60", imagePath: "lib/images/iced_coffee.png"),
  ];

  // user cart
  List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  // get user cart
  List<Coffee> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffee coffee) {
    userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Coffee coffee) {
    userCart.remove(coffee);
    notifyListeners();
  }




}