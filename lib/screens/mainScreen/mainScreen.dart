import 'dart:ui';
import 'package:flutter/material.dart';

import '../../theme.dart';
import 'buttonGroup.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  int _selectedView = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onButtonTapped(int index) {
    setState(() {
      _selectedView = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: ButtonGroup(items: [
            ButtonGroupItem(
              "Карта",
              () => _onButtonTapped(0),
              _selectedView == 0,
            ),
            ButtonGroupItem(
              "Список",
              () => _onButtonTapped(1),
              _selectedView == 1,
            ),
          ])),
      body: Container(
        color: black200,
        child: Center(
          child: Text(
            "Тут должна быть карта",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            activeIcon: Icon(Icons.location_on),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            activeIcon: Icon(Icons.bookmark),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            activeIcon: Icon(Icons.notifications),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: HexColor.fromHex('#A1A8B1'),
        selectedItemColor: HexColor.fromHex('#3978F2'),
        onTap: _onItemTapped,
      ),
    );
  }
}
