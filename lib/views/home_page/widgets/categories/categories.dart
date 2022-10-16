import 'package:flutter/material.dart';

import '../../../../../../consts/const.dart';

Widget categories(BuildContext context, Size size) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [
        Text('Explore by category',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            )),
        Text('See All(36)',
            style: TextStyle(fontSize: 14, color: Colors.grey))
      ]),
      SizedBox(
        height: size.width * 0.25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriesList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: Column(
                  children: [
                    Container(
                      width: size.width * 0.15,
                      height: size.width * 0.15,
                      decoration: BoxDecoration(
                          color: categoriesList[index].categoryColor,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      categoriesList[index].categoryName,
                      style: const TextStyle(fontSize: 14),
                    )
                  ],
                ),
              );
            }),
      )
    ]),
  );
}
