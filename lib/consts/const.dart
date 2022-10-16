import 'package:eightyythree_task/models/addres_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../models/cart_item_model.dart';
import '../models/category_model.dart';
import '../models/deal_model.dart';

final Color softPrimaryColor = Color(0xFFee6a61);
final Color primaryColor = Color(0xFFd93f1e);
final Color firstCategoryColor = Color(0xFFf9bdad);
final Color secondCategoryColor = Color(0xFFfad96d);
final Color thirdCategoryColor = Color(0xFFccb8fc);
final Color fourthCategoryColor = Color(0xFFb0eafd);
final Color fifthCategoryColor = Color(0xFFf49cc2);
final Color navBarLightColor = Color(0xFFf4f9fa);
final Color navBarDarkColor = Color(0xFF3A3838);
final Color iconCartColor = Color(0xFF47b6da);


final List<CategoryModel> categoriesList = [
  CategoryModel(categoryName: 'Steak', categoryColor: firstCategoryColor),
  CategoryModel(categoryName: 'Vegetables', categoryColor: secondCategoryColor),
  CategoryModel(categoryName: 'Beverages', categoryColor: thirdCategoryColor),
  CategoryModel(categoryName: 'Fish', categoryColor: fourthCategoryColor),
  CategoryModel(categoryName: 'Juice', categoryColor: fifthCategoryColor),
];
 List<DealModel> dealsList = [
  DealModel(
      dealTitle: 'Deal title',
      dealLocation: 'Deal location',
      dealDescription: 'Deal description',
      dealOldCost: 20.00,
      dealNewCost: 17.5,
     dealColor: firstCategoryColor,
     isFav: false
  ),
  DealModel(
      dealTitle: 'Deal title',
      dealLocation: 'Deal location',
      dealDescription: 'Deal description',
      dealOldCost: 15.00,
      dealNewCost: 12.5,
     dealColor: fourthCategoryColor,
      isFav: false
  ),
];
final List<CartItemModel> cartItemsList = [
  CartItemModel(
      itemName: 'Item 1',
      itemNotes: 'Item notes',
      itemPrice: 15.00,
      itemQuantity: 2,
      itemColor: firstCategoryColor),
  CartItemModel(
      itemName: 'Item 2',
      itemNotes: 'Item notes',
      itemPrice: 20.00,
      itemQuantity: 3,
      itemColor: secondCategoryColor),
  CartItemModel(
      itemName: 'Item 3',
      itemNotes: 'Item notes',
      itemPrice: 9.50,
      itemQuantity: 1,
      itemColor: thirdCategoryColor),
  CartItemModel(
      itemName: 'Item 4',
      itemNotes: 'Item notes',
      itemPrice: 95.00,
      itemQuantity: 1,
      itemColor: fifthCategoryColor),
];
final List<AddressModel> addressList = [
  AddressModel(
      addressTitle: 'Home Address',
      addressNotes: 'mahmoud st. no.2',
      address: 'Street c12'),
  AddressModel(
      addressTitle: 'Office Address',
      addressNotes: 'alrashidi st. no.2',
      address: 'Street c7'),
  AddressModel(
      addressTitle: 'department Address',
      addressNotes: 'ayman st. no.2',
      address: 'Street c5'),
];
