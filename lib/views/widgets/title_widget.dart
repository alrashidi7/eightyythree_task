import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../../viewmodels/theme_service.dart';
import 'custom_shape.dart';

Widget titleWidget(BuildContext context, Size size) {
  return Container(
    height: size.height * 0.2,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: GetBuilder<ThemeService>(
          init: ThemeService(),
          builder: (builder){
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    CustomPaint(
                      size: Size(size.width * 0.45,
                          size.height * 0.2),
                      painter: RPSCustomPainter(),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: size.width * 0.5,
                      height: size.height * 0.17,
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(
                            Ionicons.location_outline,
                            color: Colors.white,
                            size: 18,
                          ),
                          Text(
                            'Kuwait',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: size.width * 0.12,
                  height: size.width * 0.12,
                  decoration: BoxDecoration(
                    color: builder.check()?  Colors.white:Colors.transparent,
                      image: const DecorationImage(
                          image: AssetImage('assets/images/profile.png',)
                      ),
                      border: Border.all(color: Colors.grey), shape: BoxShape.circle),
                )
              ],
            ),
            GestureDetector(
              onTap: (){
                builder.switchTheme();
              },
              child:
              !builder.check()?
              Icon(
                Ionicons.moon_outline,
                size: 30,
              )
                  :
              Icon(
                Ionicons.sunny_outline,
                size: 30,
              ),
            )
          ],
        );
      }),


    ),
  );
}
