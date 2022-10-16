
import 'package:eightyythree_task/views/cart_screen/widgets/cart_widget.dart';
import 'package:flutter/material.dart';

import '../../consts/const.dart';
import '../widgets/title_widget.dart';

class CartPageScreen extends StatelessWidget {
  const CartPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleWidget(context,size),

          SizedBox(
            height: size.height * 0.05,
          ),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal:12 ),
            child: Text('Cart',style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: primaryColor
            ),),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          cartItems(context,size),

        ],
      );
  }
}
