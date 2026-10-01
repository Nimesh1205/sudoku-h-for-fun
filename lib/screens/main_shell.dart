import 'package:flutter/material.dart';
import 'package:hsudoku/screens/home_screen.dart';
import 'package:hsudoku/screens/learn_screen.dart';
import 'package:hsudoku/screens/settings_screen.dart';
import 'package:hsudoku/theme/app_theme.dart';

class MainShell extends StatefulWidget{
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  final List<Widget> _pages = const [
    HomeScreen(),
    LearnScreen(),
    SettingsScreen(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: 
      Theme(
        data:Theme.of(context).copyWith(
        splashFactory: NoSplash.splashFactory,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),

      child:BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        selectedItemColor: AppColors.primaryAppColor,
        selectedIconTheme: const IconThemeData(color: AppColors.primaryAppColor),
        unselectedItemColor: AppColors.secondaryTextColor,
        iconSize: 30,
        selectedLabelStyle: const TextStyle(
          fontFamily: AppFonts.primaryFont,
        ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: AppFonts.primaryFont
        ),
        onTap: (index) {
          setState((){
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outlined),
            activeIcon: Icon(Icons.lightbulb),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    )
    );
  }
}