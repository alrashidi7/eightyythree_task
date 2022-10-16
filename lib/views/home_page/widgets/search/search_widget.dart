
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

Widget searchWidget(BuildContext context, Size size) {
  return Container(
    width: size.width * 0.9,
    height: size.height * 0.06,
    margin: EdgeInsets.only(bottom:16),
    decoration: BoxDecoration(
      color: Colors.grey.shade200,
      border: Border.all(color:Colors.grey.shade300 ),
      borderRadius: BorderRadius.circular(8),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          Ionicons.search_outline,
          color: Colors.grey,
        ),
        Container(
          width: size.width * 0.7,
          alignment: Alignment.center,
          child: const Text(
            'Search in thousands of products',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        )
      ],
    ),
  );
}