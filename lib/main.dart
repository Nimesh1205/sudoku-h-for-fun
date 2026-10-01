import 'package:flutter/material.dart';
import 'package:hsudoku/screens/main_shell.dart';
import 'package:hsudoku/theme/app_theme.dart';

void main(){
  runApp(const SudokuApp());
}

class SudokuApp extends StatelessWidget{
  const SudokuApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: const MainShell(),
      theme: BuildTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}