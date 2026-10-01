import 'package:flutter/material.dart';
import 'package:hsudoku/screens/loading_screen.dart';
import 'package:hsudoku/theme/app_theme.dart';
import 'package:hsudoku/widgets/app_button.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final text=Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor, 
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.fromLTRB(space.l, space.xl, space.l, space.xl),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Sudoku",
                    style: text.displayLarge,
                    children: [
                      TextSpan(
                        text: "H",
                        style: text.displayLarge?.copyWith(color: AppColors.primaryAppColor)
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: space.xxl),
                const SizedBox(height: space.xxl),
                Text("Build your Focus",
                  textAlign: TextAlign.center,style: text.headlineLarge),
                Text("Challenge your mind, one grid at a time",
                  textAlign: TextAlign.center,style: text.titleMedium),
                const SizedBox(height: space.xl),
                AppButton(
                  label:"New Game",
                  color:AppColors.primaryAppColor,
                  onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoadingScreen()),
                    );
                  },
                ),
              ],
            ),
        ),
      ),
    );
  }
}