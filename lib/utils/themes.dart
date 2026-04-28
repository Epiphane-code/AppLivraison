import 'package:flutter/material.dart';
abstract class MyColors {
  static Color principaleColorLight = const Color.fromARGB(255, 248, 121, 2);
  static Color secondaireColorlight = const Color.fromARGB(255, 248, 171, 99);
  static Color cardColorLight = const Color.fromARGB(255, 245, 245, 245);


  static Color principaleColorDartLight = const Color.fromARGB(255, 8, 2, 0);


  static Color principaleColorDart = const Color.fromARGB(255, 1, 43, 17);
  static Color secondaireColorDart = const Color.fromARGB(255, 8, 78, 2);
  static Color cardColorDart = const Color.fromARGB(255, 2, 17, 0);


  static Color blackColor = const Color.fromARGB(255, 0, 0, 0);
  static Color whiteColor = const Color.fromARGB(255, 255, 255, 255);
}


abstract class ThemeDataPerso {
  static final modeleclair = ThemeData(
    brightness: Brightness.light,
    primaryColor: MyColors.principaleColorLight,

     cardTheme: CardThemeData(
      elevation: 10,
      color: MyColors.cardColorLight,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: MyColors.whiteColor ,
      indicatorColor: MyColors.principaleColorLight,
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      labelTextStyle: WidgetStatePropertyAll(
        TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    scaffoldBackgroundColor: MyColors.secondaireColorlight,
    appBarTheme: AppBarTheme(
      backgroundColor: MyColors.principaleColorLight,
      foregroundColor: Colors.white,
    ),
    useMaterial3: true,
  );

  static final modeledark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: MyColors.principaleColorDart,

     cardTheme: CardThemeData(
      elevation: 10,
      color: MyColors.cardColorDart,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: MyColors.blackColor,
      indicatorColor: MyColors.principaleColorDart,
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        labelTextStyle: WidgetStatePropertyAll(
        TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    scaffoldBackgroundColor: MyColors.secondaireColorDart,
    appBarTheme: AppBarTheme(
      backgroundColor: MyColors.principaleColorDart,
      foregroundColor: MyColors.whiteColor,
    ),
    useMaterial3: true,
  );
}