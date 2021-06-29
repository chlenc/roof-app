import 'package:flutter/material.dart';
import 'package:roof_app/theme.dart';

class Select extends StatefulWidget {
  const Select(
      {Key? key,
      required this.selectedValue,
      required this.values,
      required this.onChange})
      : super(key: key);

  final String selectedValue;
  final void Function(String? value) onChange;
  final List<String> values;

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: widget.selectedValue,
      icon: Padding(
        padding: EdgeInsets.only(left: 8),
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          color: HexColor.fromHex('#A1A8B1'),
        ),
      ),
      iconSize: 10,
      style: TextStyle(
        fontFamily: 'Manrope',
        color: HexColor.fromHex('#A1A8B1'),
        fontSize: 16,
      ),
      underline: Container(height: 0),
      onChanged: widget.onChange,
      items: widget.values.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
