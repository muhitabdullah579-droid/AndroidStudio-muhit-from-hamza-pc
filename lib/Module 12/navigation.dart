import 'package:flutter/material.dart';

import '../Module 10/image.dart';
import '../Module 11/gridview_and_navigation.dart';
import '../Module 11/list.dart';
import '../Module 11/stack_and_navigation.dart';
import 'Travel_View/TravelHomeScreen.dart';

class BottomNev extends StatefulWidget {
  const BottomNev({super.key});

  @override
  State<BottomNev> createState() => _BottomNevState();
}

class _BottomNevState extends State<BottomNev> {
  int _selectedIndex = 0;
  List pages = [
    TravelHomeScreen(),
    Gridview(),
    ClassList(),
    Account(),
  ];
  onTap(int index){
    setState(() {
      print('test index $index');
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Travel App",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex ,
          onTap: onTap,
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.download),label: 'Downloads'),
            BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Menu'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          ]
      ),
    );
  }
}
