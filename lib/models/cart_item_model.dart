import 'package:flutter/material.dart';

class CartItemModel {
  final String itemName;
  final String itemNotes;
  final double itemPrice;
   int itemQuantity;
  final Color itemColor;

  CartItemModel(
      {
        required this.itemName,
        required this.itemNotes,
        required  this.itemPrice,
        required this.itemQuantity,
        required this.itemColor});
}
