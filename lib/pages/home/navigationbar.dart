import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex; // Index actif
  final Function(int) onTap; // Callback à exécuter lorsque l'utilisateur change d'onglet

  const CustomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          label: 'Stockages',
          icon: Icon(Icons.add_home),
        ),
        BottomNavigationBarItem(
          label: 'Matériels',
          icon: Icon(Icons.conveyor_belt, size: 30),
        ),
        BottomNavigationBarItem(
          label: 'Événements',
          icon: Icon(Icons.event),
        ),
        BottomNavigationBarItem(
          label: 'Plus',
          icon: Icon(Icons.dehaze),
        ),
      ],
    );
  }
}
