import 'package:flutter/material.dart';
import 'package:roof_app/screens/roofsScreen/roofsList.dart';
import '../../theme.dart';
import 'navButton.dart';

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
            child: new RoofsList(),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 10.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: black200,
              ),
              height: 32,
              child: new Row(
                children: [
                  NavButton(
                    title: "Карта",
                    onClick: () => _onButtonTapped(0),
                    active: _selectedView == 0,
                  ),
                  NavButton(
                    title: "Список",
                    onClick: () => _onButtonTapped(1),
                    active: _selectedView == 1,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
