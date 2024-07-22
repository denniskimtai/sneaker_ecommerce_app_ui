import 'package:flutter/material.dart';
import 'package:sneaker_ecommerce/models/shoe.dart';

class Cart extends ChangeNotifier {
  // List of shoes for sale
  final List<Shoe> _shoesList = [
    Shoe(
        name: "Air Force 1",
        price: 3500,
        description: "Air force 1 shoes",
        imagePath: "lib/images/air-force-1.png"),
    Shoe(
        name: "Air Jordan",
        price: 6500,
        description: "The all new nike air jordan.",
        imagePath: "lib/images/Air-jordan.png"),
    Shoe(
        name: "Air Force Huarache",
        price: 3250,
        description: "The shoe that gives you comfort plus style!!",
        imagePath: "lib/images/Airforce-huarache.png"),
    Shoe(
        name: "Jordan",
        price: 1500,
        description: "All new, stylish and hot jordan",
        imagePath: "lib/images/jordan-animated.png"),
    Shoe(
        name: "Air Force 1",
        price: 5500,
        description: "Air force 1 shoes",
        imagePath: "lib/images/Shoe1.png"),
  ];
  // User cart
  List<Shoe> userCartItems = [];
  // get shoes list
  List<Shoe> get shoes => _shoesList;
  // Add item to cart
  void addItemToCart(Shoe shoe) {
    userCartItems.add(shoe);
    notifyListeners();
  }

  // Remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCartItems.remove(shoe);
    notifyListeners();
  }
}
