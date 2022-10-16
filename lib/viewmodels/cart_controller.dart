import 'package:eightyythree_task/consts/const.dart';
import 'package:eightyythree_task/models/cart_item_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController{
  List<CartItemModel> cartItems = cartItemsList;
  double cartTotal = 0.0;

  CartController(){
    getTotal();
  }
  increaseQuantity(int itemIndex){
    cartItems[itemIndex].itemQuantity++;
    getTotal();
    update();
  }
  decreaseQuantity(int itemIndex){
    if(cartItems[itemIndex].itemQuantity == 1){
      cartItems.removeAt(itemIndex);
    }else {
      cartItems[itemIndex].itemQuantity--;

    }
    getTotal();
    update();
  }
  getTotal(){
    cartTotal = 0.0;
    for(var item in cartItems){
      cartTotal = cartTotal + (item.itemQuantity * item.itemPrice);

    }
    update();
  }


}