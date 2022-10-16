import 'package:eightyythree_task/consts/const.dart';
import 'package:eightyythree_task/viewmodels/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget noDataFound(BuildContext context,Size size,String message){

  return Center(
    child:GetBuilder<ThemeService>(
      init: ThemeService(),
      builder: (builder){
        return  Container(
          width: size.width * 0.8,
          height: size.height * 0.3,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color:builder.check()?Colors.black87: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: primaryColor.withOpacity(0.5),
                    offset: Offset(0,0),
                    blurRadius: 1,
                    spreadRadius: 1
                )
              ]
          ),
          child: Column(
            children: [
              Image.asset('assets/images/no_data_found.png',
                width: size.width * 0.35,
                height: size.height * 0.25,
              ),
              Text(message,
                style: TextStyle(
                  fontSize: 20,
                  color: !builder.check()?Colors.black: Colors.white,
                ),
              ),

            ],
          ),
        );
      },
    ),
  );
}