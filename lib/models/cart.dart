import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // List of shoes for sale
  var shoesShop = [
    Shoe(
      name: "Jordan",
      description: "Super suitable, well designed for amazing usage",
      imagePath: "lib/images/newshoes1.png",
      price: "499.99",
    ),
    Shoe(
      name: "Adidas",
      description: "Super suitable, well designed for amazing usage",
      imagePath: "lib/images/newshoes2.png",
      price: "432.99",
    ),
    Shoe(
      name: "Puma",
      description: "Super suitable, well designed for amazing usage",
      imagePath: "lib/images/newshoes3.png",
      price: "610.00",
    ),
    Shoe(
      name: "Adidas",
      description: "Super suitable, well designed for amazing usage",
      imagePath: "lib/images/newshoes1.png",
      price: "328.69",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoesShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
