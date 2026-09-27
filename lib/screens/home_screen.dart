import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 234, 234),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 60),
            child: Column(
              children:[
                Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(text: "Sudoku", style: TextStyle(
                        color: Color(0xFF171A21),
                        fontFamily: "LondrinaSolid",
                        fontSize: 64,
                        fontWeight: FontWeight.w400)),
                      TextSpan(text: "H", style: TextStyle(
                        color: Color(0xFF1E91D6),
                        fontSize: 64,
                        fontFamily: "LondrinaSolid",
                        fontWeight: FontWeight.w400)),
                    ]),
                  textAlign: TextAlign.center,
                  ),
                ),
              ], //Children
            ),
        ),
      ),
    );
  }
}