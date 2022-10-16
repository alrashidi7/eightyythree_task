import 'package:flutter/material.dart';

import '../../../../../../../consts/const.dart';

Widget addressItem(BuildContext context,Size size,int index){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Container(
      height: size.height * 0.09,
      width: size.width * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width * 0.14,
            height: size.width * 0.14,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Container(
                width: size.width * 0.33,
                child: Text(
                  addressList[index].addressTitle,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Text(
                addressList[index].addressNotes,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 12),
              ),
              Text(
                addressList[index].address,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 12),
              ),
            ],
          )
        ],
      ),
    ),
  );
}