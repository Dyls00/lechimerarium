import 'package:flutter/material.dart';
import 'stockage/Stockage.dart';
import 'materiel/materiel.dart';
import 'evenement/evenements.dart';
import 'plus/plus.dart';
import 'navigationbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Index actuel

  final List<Widget> _pages = [
    Stockage(),
    Materiel(),
    Evenements(),
    Plus(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
