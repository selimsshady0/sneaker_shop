import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier{
  // list of shoes for sale
  List<Shoe> shoeShope = [
    Shoe(
      name: "Zoom FREAK",
      price: "256",
      imagePath: "lib/images/shoe_1.png",
      description: "The forward-thinking design of his latest signature shoe.",
    ),
    Shoe(
      name: "KD 11",
      price: "216",
      imagePath: "lib/images/shoe_2.png",
      description: "The forward-thinking design of his latest signature shoe.",
    ),
    Shoe(
      name: "Air Jordan",
      price: "325",
      imagePath: "lib/images/shoe_3.png",
      description: "You've got the hops and the speed-lace up in this shoes that enhance.",
    ),
    Shoe(
      name: "Dynamic",
      price: "188",
      imagePath: "lib/images/shoe_4.png",
      description: "The forward-thinking design of his latest signature shoe.",
    ),
  ];

  // get list length
  int listLength(){
    return shoeShope.length;
  }

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List <Shoe> getShoeList(){
    return shoeShope;
  }

  // get cart
  List <Shoe> getUserCart(){
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
