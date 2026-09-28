import "package:flutter/material.dart";

abstract final class AppColors{
  static const backgroundColor = Color(0xFFF9F9F9);
  static const lightColor = Color(0xFFF9F9F9);
  static const textColor = Color(0xFF171A21);
  static const secondaryTextColor = Color(0xFFA8ADBA);
  static const primaryAppColor = Color(0xFF2879EA);
  static const secondaryAppColor = Color(0xFF8FC93A);
}

abstract final class AppFonts{
  static const primaryFont="LondrinaSolid";
  static const secondaryFont="NotoSans";
}

abstract final class space{
  static const double s=8;
  static const double m=16;
  static const double l=24;
  static const double xl=40;
  static const double xxl=60;
}

ThemeData BuildTheme()=> ThemeData(
  useMaterial3: true,
  fontFamily: AppFonts.secondaryFont,
  scaffoldBackgroundColor: AppColors.backgroundColor,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontFamily: AppFonts.primaryFont,
        fontSize: 64, fontWeight: FontWeight.w400, color: AppColors.textColor),
    headlineLarge: TextStyle(
        fontFamily: AppFonts.primaryFont,
        fontSize: 40, fontWeight: FontWeight.w400, color: AppColors.textColor),
    
    titleMedium: TextStyle(
        fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.secondaryTextColor),
    bodyMedium: TextStyle(
        fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.textColor),
    labelLarge: TextStyle(
        fontSize: 20, fontWeight: FontWeight.w400, color: AppColors.secondaryTextColor),
  ),
);