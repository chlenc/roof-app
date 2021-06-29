import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roof_app/theme.dart';

class Section extends StatelessWidget {
  const Section({Key? key, required this.title, required this.children})
      : super(key: key);
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(
              title.toUpperCase(),
              style: TextStyle(
                color: HexColor.fromHex('#A1A8B1'),
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(height: 8),
          Divider(color: HexColor.fromHex('#EDF1F5'), height: 1),
          ...children,
          Divider(color: HexColor.fromHex('#EDF1F5'), height: 1),
        ],
      ),
    );
  }
}
