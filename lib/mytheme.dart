import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = Color(0xFF39A552);
  static Color blackColor = Color(0xFF000000);
  static Color whiteColor = Color(0xffF8F8F8);
  ThemeData lightTheme = ThemeData(
      primaryColor: primaryLight,
      appBarTheme: AppBarTheme(color: primaryLight),
      textTheme: TextTheme(
          titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
              color: MyTheme.whiteColor
      ),
          titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
              color: MyTheme.blackColor
      ),
      )
  );
}
