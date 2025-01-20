// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
appBar: PreferredSize(
     preferredSize: Size.fromHeight(100.0), //width and height 
          // The size the AppBar would prefer if there were no other constraints.
     child: SafeArea(
       child: Container(
         height: 120,
         color: const Color.fromARGB(255, 0, 0, 0),
         child: Center(
          child: Image.asset(
          'assets/images/logo.png',
          width: 150,
          height: 100,
          fit: BoxFit.contain,
        ),
        ),
       ),
     ),
),

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      ),
       bottomNavigationBar: NavigationBar(),
    );
  }

  // ignore: non_constant_identifier_names
  Widget NavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          label: 'Stockages',
          icon: Icon(Icons.add_home),
        ),
        BottomNavigationBarItem(
          label: 'Materiels',
          icon: Icon(
            Icons.conveyor_belt,
            size: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Evenements',
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
