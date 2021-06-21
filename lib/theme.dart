import 'dart:ui';

import 'package:flutter/material.dart';

var bluePrimary = HexColor.fromHex('#3978F2');
var black200 = HexColor.fromHex('#EDF1F5');

var theme = ThemeData(
  // Define the default brightness and colors.
  primaryColor: HexColor.fromHex('#3978F2'),
  brightness: Brightness.dark,
  accentColor: Colors.cyan[600],
  // Define the default font family.
  fontFamily: 'Manrope',

  // Define the default TextTheme. Use this to specify the default
  // text styling for headlines, titles, bodies of text, and more.
  textTheme: TextTheme(
    headline1: TextStyle(
        fontSize: 32.0,
        color: Colors.white,
        fontWeight: FontWeight.w800,
        height: 1.25),
    headline2: TextStyle(
        fontSize: 24.0,
        color: Colors.white,
        fontWeight: FontWeight.w800,
        height: 1.3),
    headline3:
        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, height: 1.4),
    bodyText1: TextStyle(
        fontSize: 16.0,
        color: black200,
        fontWeight: FontWeight.w400,
        height: 1.5),
  ),
);

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
