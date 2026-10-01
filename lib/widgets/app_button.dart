import 'package:flutter/material.dart';
import 'package:hsudoku/theme/app_theme.dart';

class AppButton extends StatelessWidget{
  const AppButton({
    super.key,
    required this.label,
    required this.color,
    required this.onPressed,
    });

    final String label;
    final Color color;
    final VoidCallback onPressed;

    @override
    Widget build(BuildContext context) {
      return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shadowColor: AppColors.primaryAppColor,
          surfaceTintColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
          overlayColor: Colors.transparent,
          backgroundColor: color,
          foregroundColor: AppColors.backgroundColor,
          elevation: 2,
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: space.m),
          textStyle: const TextStyle(
            fontFamily: AppFonts.secondaryFont,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        child: Text(label),
      );
    }
}