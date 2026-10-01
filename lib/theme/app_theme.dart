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
  static const double xs=4;
  static const double s=8;
  static const double m=16;
  static const double l=24;
  static const double xl=40;
  static const double xxl=60;
}

ThemeData BuildTheme()=> ThemeData(
  pageTransitionsTheme: const PageTransitionsTheme(
  builders: {
      TargetPlatform.android: NoTransitionsBuilder(),
      TargetPlatform.iOS: NoTransitionsBuilder(),
    },
  ),
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
    headlineMedium: TextStyle(
        fontFamily: AppFonts.primaryFont,
        fontSize: 36, fontWeight: FontWeight.w400, color: AppColors.textColor
    ),
    titleMedium: TextStyle(
        fontSize: 18, fontWeight: FontWeight.w400, color: AppColors.secondaryTextColor),
    bodyMedium: TextStyle(
        fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.textColor),
    labelLarge: TextStyle(
        fontSize: 20, fontWeight: FontWeight.w400, color: AppColors.secondaryTextColor),
  ),
);

class NoTransitionsBuilder extends PageTransitionsBuilder {
  const NoTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child; // no slide, fade or zoom
  }
}