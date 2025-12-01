import 'package:example/screens/with_getx.dart';
import 'package:flutter/material.dart';

import 'food.dart';

class MyAppScreen extends StatefulWidget {
  const MyAppScreen({super.key});

  @override
  State<MyAppScreen> createState() => _MyAppScreenState();
}

class _MyAppScreenState extends State<MyAppScreen> {
  int currentIndex = 0;
  final List<Widget> screens = [Food(), WithGetx()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'food'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'with_getx'),
        ],
      ),

    );
  }
}