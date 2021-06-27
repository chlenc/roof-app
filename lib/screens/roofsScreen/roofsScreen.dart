// import 'package:flutter/material.dart';
//
// import '../../theme.dart';
// import '../bottomMenu.dart';
// import 'buttonGroup.dart';
//

import 'package:flutter/material.dart';

import '../../theme.dart';
import 'buttonGroup.dart';

class RoofsScreen extends StatefulWidget {
  const RoofsScreen({Key? key}) : super(key: key);

  @override
  State<RoofsScreen> createState() => _RoofsScreenState();
}

class _RoofsScreenState extends State<RoofsScreen> {
  int _selectedView = 0;

  void _onButtonTapped(int index) {
    setState(() {
      _selectedView = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Center(
            child: Text(
              "Тут должна быть карта",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 10.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: ButtonGroup(
              items: [
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
              ],
            ),
          ),
        ),
      ],
    );
    return Container(
      child: Expanded(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
