import 'package:flutter/material.dart';
import '../theme.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle(this.data, {Key? key, text}) : super(key: key);
  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w800,
        fontSize: 32,
        color: HexColor.fromHex('#273138'),
      ),
    );
  }
}
