import 'dart:convert';

import "package:flutter/material.dart";

class DealModel {
  final String dealTitle;
  final String dealLocation;
  final String dealDescription;
  final double dealOldCost;
  final double dealNewCost;
  final Color dealColor;
   bool isFav = false;

  DealModel({
    required this.dealTitle,
    required this.dealLocation,
    required this.dealDescription,
    required this.dealOldCost,
    required this.dealNewCost,
    required this.dealColor,
    required this.isFav});


}
