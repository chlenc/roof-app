import 'package:flutter/material.dart';
import 'package:roof_app/screens/mainScreen/mainScreen.dart';
import 'package:roof_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Крышер Rooshare',
      theme: theme,
      home: MainScreen(),
    );
  }
}