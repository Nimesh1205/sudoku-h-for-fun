import 'package:flutter/material.dart';
import 'package:hsudoku/screens/home_screen.dart';

void main(){
  runApp(const SudokuApp());
}

class SudokuApp extends StatelessWidget{
  const SudokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}