import 'package:eightyythree_task/consts/const.dart';
import 'package:eightyythree_task/viewmodels/deal_controller.dart';
import 'package:eightyythree_task/views/widgets/no_data_found.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'deal_fav_widget.dart';

Widget favItems(BuildContext context,Size size){
  return Padding(
    padding:const EdgeInsets.symmetric(horizontal:12 ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: size.height * 0.05,
        ),
        Text('Favorites',style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
          color: primaryColor
        ),),
        SizedBox(
          height: size.height * 0.05,
        ),
    GetBuilder<DealController>(
      init: DealController(),
      builder: (builder){
      return
        SizedBox(

          child: Center(
            child:
            builder.getFavDeals().length > 0 ?
            Container(
              height: size.height * 0.58,
              child: ListView.builder(
                  itemCount: builder.getFavDeals().length,
                  itemBuilder: (BuildContext context,int index){
                    return
                      dealFavWidget(context, size,index);
                  }),
            ):
             Center(
              child: noDataFound(context, size, 'No Favorites Deals yet'),
            )
          ),
        );
    },),
      ],
    ),
  );
}