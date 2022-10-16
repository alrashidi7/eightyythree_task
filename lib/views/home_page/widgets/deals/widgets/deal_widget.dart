import 'package:eightyythree_task/viewmodels/deal_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../../../../../../../consts/const.dart';
import '../../../../../viewmodels/theme_service.dart';

Widget dealWidget(
    BuildContext context, Size size, int index) {
  return GetBuilder<DealController>(
      init: DealController(),
      builder: (builder){
    return Container(
      width: size.width * 0.75,
      height: size.height * 0.16,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                width: size.width * 0.25,
                height: size.height * 0.13,
                decoration: BoxDecoration(
                   // color: builder.deals[index].dealColor,
                    color: firstCategoryColor,
                    borderRadius: BorderRadius.circular(12)),
              ),
              GestureDetector(
                onTap: () {
                  if (builder.deals[index].isFav) {
                    builder.removeFromFav(index);
                  } else {
                    builder.addToFav(index);}
                },
                child:
                GetBuilder<ThemeService>(
                    init: ThemeService(),
                    builder: (themeBuilder){
                      return Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color:themeBuilder.check()? Colors.black87: Colors.white,
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(8),topLeft: Radius.circular(8))),
                        child: Center(
                          child: builder.deals[index].isFav
                              ? const Icon(
                            Ionicons.heart,
                            color: Colors.red,
                            size: 20,
                          )
                              : const Icon(
                            Ionicons.heart_outline,
                            size: 20,
                          ),
                        ),
                      );
                    })
                ,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  builder.deals[index].dealTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  builder.deals[index].dealDescription,
                  style: const TextStyle(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Ionicons.location_outline,
                      color: Colors.grey,
                      size: 18,
                    ),
                    Text(
                      builder.deals[index].dealLocation,
                      style: const TextStyle(),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: '\$ ',
                            style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                            children: [
                              TextSpan(text: builder.deals[index].dealNewCost.toString())
                            ])),
                    const SizedBox(
                      width: 4,
                    ),
                    RichText(
                        text: TextSpan(
                            text: ' \$ ',
                            style: const TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                                fontWeight: FontWeight.w400,
                                fontSize: 17),
                            children: [
                              TextSpan(text: '${builder.deals[index].dealOldCost.toString()} ')
                            ])),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.05,
          ),
        ],
      ),
    );
  });
}
