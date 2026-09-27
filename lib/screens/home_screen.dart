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
                SizedBox(height: 60),
                Text(
                  "Build Your Focus",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFF171A21),
                    fontSize: 40,
                    fontFamily: "LondrinaSolid",
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Challenge your mind, one grid at a time",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFFA8ADBA),
                    fontSize: 20,
                    fontFamily: "LondrinaSolid",
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1E91D6),
                      elevation: 3,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Text(
                      "Start New Game",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 235, 234, 234),
                        fontSize: 24,
                        fontFamily: "LondrinaSolid",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8FC93A),
                      elevation: 3,
                      shape: const StadiumBorder(),
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: const Text(
                      "Settings",
                      style: TextStyle(
                        color:const Color.fromARGB(255, 235, 234, 234),
                        fontFamily: "LondrinaSolid",
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ], //Children
            ),
        ),
      ),
    );
  }
}