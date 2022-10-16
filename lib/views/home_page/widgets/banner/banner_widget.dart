
import 'package:flutter/material.dart';

import '../../../../../../consts/const.dart';

Widget banner(BuildContext context,Size size){
  return Container(
    width: size.width,
    child: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: size.width * 0.9,
          height: size.height * 0.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: firstCategoryColor
          ),
        ),
        Image.asset('assets/images/banner_content.png')

      ],
    ),
  );
}