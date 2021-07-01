import 'package:flutter/material.dart';
import 'package:roof_app/screens/favoritesScreen/favoritesScreen.dart';
import 'package:roof_app/screens/notificationsScreen/notificationsScreen.dart';
import 'package:roof_app/screens/roofsScreen/roofsScreen.dart';
import 'package:roof_app/screens/settingsScreen/settingsScreen.dart';

import '../bottomMenu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    RoofsScreen(),
    FavoritesScreen(),
    NotificationsScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomMenu(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
