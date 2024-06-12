import 'package:ecommerce_flutter_application/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes, items, shoe for sale, cart , add and remove cart items

  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom',
      price: '236',
      description: 'mimi',
      imagePath: 'lib/images/shoe4.jpeg',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '220',
      imagePath: 'lib/images/shoe3.jpeg',
      description: 'you have got a discoutrn to pick rffform',
    ),
    Shoe(
      name: 'KID Treys',
      price: '220',
      imagePath: 'lib/images/shoe2.jpeg',
      description: 'you have got to figure this out by yourself',
    ),
    Shoe(
      name: 'Mimi Treys',
      price: '190',
      imagePath: 'lib/images/shoe1.jpeg',
      description: 'you know that you have got to figure this out by yourself',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
