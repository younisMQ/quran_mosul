import 'package:flutter/material.dart';
import 'package:quran_mosul/appcolor.dart';

class MyThemData {
  static final ThemeData lightMode = ThemeData(
    primaryColor: AppColor.primaryLightColor,
    canvasColor: AppColor.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: AppColor.textColor
      ),
      elevation: 0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColor.primaryLightColor,
      unselectedItemColor: AppColor.whiteColor,
      backgroundColor: Color(0xff0C335E),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColor.textColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),

      bodyMedium: TextStyle(
        color: AppColor.textColor,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      bodySmall:  TextStyle(
        color: AppColor.textColor,
        fontSize: 25,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: TextStyle(
        color: AppColor.textColor,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),

    ),
  );
}
