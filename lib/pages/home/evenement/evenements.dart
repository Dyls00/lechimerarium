import 'package:flutter/material.dart';
import '../widgets/table.dart';

class Evenements extends StatelessWidget {
  const Evenements({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width; 
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
          // Arrière-plan flouté (par exemple)
          Positioned.fill(
            child: Container(
              width: screenWidth,
              height: 100,
              color: Colors.black.withOpacity(0.3), // Couche semi-transparente
            ),
          ),

          // Premier bloc
          Positioned(
             top: 50,
            left: 100,
            child: Center(
          child: Image.asset(
          'assets/images/logo.png',
          width: 200,
          height: 100,
          fit: BoxFit.contain,
        ),
        ),
          ),

          // Deuxieme bloc centré
          Positioned(
          bottom: 580, // Distance depuis le bas
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              width: 200, // Largeur du conteneur
              height: 50, // Hauteur du conteneur
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 0, 0), // Couleur du conteneur
                borderRadius: BorderRadius.circular(10), // Coins arrondis
              ),
              child: Center(
                child: Text(
                  'Evenements',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ),

      // Troisieme bloc
          Positioned(
          bottom: 360, // Distance depuis le bas
          left: 0,
          right: 0,
          child: Center(
            child: Thetable(),
          ),
        ),
        ],
        ) /* add child content here */,
      ),
    );
  }
}