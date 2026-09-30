import 'package:flutter/material.dart';
import 'package:hsudoku/theme/app_theme.dart';
import 'package:hsudoku/screens/game_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<double>> _blockAnimations;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat();

    _blockAnimations = List.generate(4, (index) {
      final start = index * 0.15;
      final end = start + 0.5;
      return TweenSequence<double>([
        TweenSequenceItem(tween: Tween(begin: 0.2, end: 1.0), weight: 1),
        TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.2), weight: 1),
      ]).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(start.clamp(0.0, 1.0), end.clamp(0.0, 1.0)),
        ),
      );
    });

    Future.delayed(const Duration(seconds: 2), () {
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const GameScreen()),
      );
    }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    final text=Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:List.generate(4, (index){
                return Padding(
                  padding: EdgeInsets.fromLTRB(space.xs, space.s, space.xs, space.s),                  child: FadeTransition(
                    opacity: _blockAnimations[index],
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color:AppColors.primaryAppColor,
                        // borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                );
              }),
            ),
    const SizedBox(height:space.xs),
    Text(
      "Generating puzzle...",
      style: text.bodyMedium),
          ],
        ),
      ),
    );
  }   
}