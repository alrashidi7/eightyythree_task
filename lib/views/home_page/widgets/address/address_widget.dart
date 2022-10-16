
import 'package:eightyythree_task/consts/const.dart';
import 'package:eightyythree_task/views/home_page/widgets/address/address_widgets/address_item.dart';
import 'package:flutter/material.dart';


Widget userAddressWidget(BuildContext context, Size size) {
  return SizedBox(
    height: size.height * 0.085,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: addressList.length,
        itemBuilder: (BuildContext context, int index) {
          return addressItem(context, size, index);
        }),
  );
}