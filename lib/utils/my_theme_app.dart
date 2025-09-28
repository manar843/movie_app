import 'package:flutter/material.dart';
import 'package:new_app/utils/app_style.dart';
import 'app_color.dart';
class MyThemeData {

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColor.primaryColor,
    appBarTheme: AppBarTheme(backgroundColor: Colors.transparent ,
        titleTextStyle: AppStyles.bold30blackAb  ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black, fontSize: 22,fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
      bodySmall: TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
    ),
    iconTheme: IconThemeData(color: Colors.grey),
  );
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: AppColor.primaryColor,
    appBarTheme: AppBarTheme(backgroundColor: Colors.transparent ,
        titleTextStyle: AppStyles.bold30whiteAb  ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),
      bodySmall: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),
    ),
    iconTheme: IconThemeData(color: Colors.white),
  );

}
