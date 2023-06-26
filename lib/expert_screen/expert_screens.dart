
// import 'dart:io';
import 'package:flutter/material.dart';
import './home.dart';
import './notif.dart';
import './profile.dart';
class HomePageExp extends StatefulWidget {
  
  const HomePageExp({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageExp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    // FirstRoute(
    //   name: 'a',
    //   query: 'or is it?',
    //   occasion: 'funeral',
    //   ages :'21',
    //   gender:'prefer not to say',
    //   location:'who cares',
    //   heights:'dwarf',
    // ),
    // TabBarApp(),
    // ProfileScreen(),
  ];

  void _onTabSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Navigation Bar Demo'),
      // ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTabSelected,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.question_answer),
          //   label: 'Query',
          // ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person),
          //   label: 'Profile',
          // ),
        ],
      ),
    );
  }
}
