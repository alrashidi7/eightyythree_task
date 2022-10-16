import 'package:eightyythree_task/consts/const.dart';
import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    buttonColor: primaryColor,
    bottomAppBarColor: primaryColor,
    buttonTheme:  ButtonThemeData(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
    buttonColor: softPrimaryColor,
    bottomAppBarColor: softPrimaryColor,
    buttonTheme:  ButtonThemeData(
      buttonColor: softPrimaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}