import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:eightyythree_task/viewmodels/cart_controller.dart';
import 'package:eightyythree_task/viewmodels/theme_service.dart';
import 'package:eightyythree_task/views/cart_screen/cart_page_screen.dart';
import 'package:eightyythree_task/views/fav_tab_screen/fav_tab_screen.dart';
import 'package:eightyythree_task/views/home_page/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../../consts/const.dart';
import 'no_data_found.dart';

Widget bottomNavBar(BuildContext context) {
  return
    GetBuilder<ThemeService>(
      init: ThemeService(),
        builder: (builder){
       return
         CurvedNavBar(
           actionButton: CurvedActionBar(
             onTab: (value) {},
             activeIcon: Container(
               padding: const EdgeInsets.all(8),
               decoration: BoxDecoration(
                   color: primaryColor,
                   shape: BoxShape.circle,
                   border: Border.all(color: Colors.white)),
               child: SizedBox(
                 width: 50,
                 height: 50,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     GetBuilder<CartController>(
                         init: CartController(),
                         builder: (builder) {
                           return Container(
                             decoration: BoxDecoration(
                               color: primaryColor,
                             ),
                             child: Text(
                               '\$${builder.cartTotal}',
                               style: const TextStyle(
                                   color: Colors.white,
                                   fontWeight: FontWeight.w900,
                                   fontSize: 14),
                             ),
                           );
                         }),
                     Align(
                       alignment: Alignment.bottomCenter,
                       child: Image.asset(
                         'assets/images/cart.png',
                         width: 40,
                         height: 30,
                         fit: BoxFit.fitWidth,
                         color: Colors.white,
                       ),
                     ),
                   ],
                 ),
               ),
             ),
           ),
           activeColor: primaryColor,
           navBarBackgroundColor: !builder.check() ? navBarLightColor : navBarDarkColor,
           inActiveColor: Colors.grey,
           extendBody: false,
           appBarItems: [
             FABBottomAppBarItem(
                 activeIcon: Icon(
                   Ionicons.home_outline,
                   color: primaryColor,
                 ),
                 inActiveIcon: const Icon(
                   Ionicons.home_outline,
                   color: Colors.grey,
                 ),
                 text: 'Home'),
             FABBottomAppBarItem(
                 activeIcon: Icon(
                   Ionicons.notifications_outline,
                   color: primaryColor,
                 ),
                 inActiveIcon: const Icon(
                   Ionicons.notifications_outline,
                   color: Colors.grey,
                 ),
                 text: 'News'),
             FABBottomAppBarItem(
                 activeIcon: Icon(
                   Ionicons.heart_outline,
                   color: primaryColor,
                 ),
                 inActiveIcon: const Icon(
                   Ionicons.heart_outline,
                   color: Colors.grey,
                 ),
                 text: 'Favorites'),
             FABBottomAppBarItem(
                 activeIcon: Icon(
                   Ionicons.wallet_outline,
                   color: primaryColor,
                 ),
                 inActiveIcon: const Icon(
                   Ionicons.wallet_outline,
                   color: Colors.grey,
                 ),
                 text: 'Cart'),
           ],
           bodyItems: [
             const HomeWidget(),
             Center(
                 child: noDataFound(
                     context, MediaQuery.of(context).size, 'No new News yet !')),
             const FavPageScreen(),
             const CartPageScreen(),
           ],
           actionBarView: const CartPageScreen(),
         );
     });


}
