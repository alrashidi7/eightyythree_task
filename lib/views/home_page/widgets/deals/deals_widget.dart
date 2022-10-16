
import 'package:eightyythree_task/views/home_page/widgets/deals/widgets/deal_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../../consts/const.dart';

Widget dealsOfDay(BuildContext context, Size size) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text('Deals of the day',
          style: TextStyle(
            fontWeight: FontWeight.w800,
          )),
      SizedBox(
        height: size.height * 0.16,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: dealsList.length,
            itemBuilder: (BuildContext context, int index) {
              return dealWidget(context, size,index);
            }),
      )
    ]),
  );
}