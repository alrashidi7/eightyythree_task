import 'package:eightyythree_task/consts/const.dart';
import 'package:eightyythree_task/viewmodels/cart_controller.dart';
import 'package:eightyythree_task/views/widgets/no_data_found.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

Widget cartItems(BuildContext context, Size size) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GetBuilder<CartController>(
          init: CartController(),
          builder: (builder) {
            return SizedBox(
              height: size.height * 0.6,
              child: builder.cartItems.length > 0
                  ? ListView.builder(
                      itemCount: builder.cartItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        return cartItem(context, size, index);
                      })
                  : Center(
                      child:
                          noDataFound(context, size, 'No items Found in Cart')),
            );
          },
        )
      ],
    ),
  );
}

Widget cartItem(BuildContext context, Size size, int index) {
  return GetBuilder<CartController>(
      init: CartController(),
      builder: (builder) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width * 0.20,
                height: size.width * 0.20,
                decoration: BoxDecoration(
                    color: builder.cartItems[index].itemColor,
                    borderRadius: BorderRadius.circular(12)),
              ),
              SizedBox(
                width: size.width * 0.40,
                height: size.height * 0.10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      builder.cartItems[index].itemName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    Text(
                      builder.cartItems[index].itemNotes,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                    Text(
                      '\$ ${(builder.cartItems[index].itemQuantity * builder.cartItems[index].itemPrice)}',
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width * 0.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        builder.decreaseQuantity(index);
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: fourthCategoryColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Icon(
                            Ionicons.remove_outline,
                            color: iconCartColor,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      builder.cartItems[index].itemQuantity.toString(),
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        builder.increaseQuantity(index);
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: fourthCategoryColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Icon(
                            Ionicons.add_outline,
                            color: iconCartColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      });
}
