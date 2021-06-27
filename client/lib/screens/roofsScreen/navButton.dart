import 'package:flutter/material.dart';
import '../../theme.dart';

class NavButton extends StatelessWidget {
  const NavButton(
      {Key? key,
      required this.title,
      required this.active,
      required this.onClick})
      : super(key: key);
  final String title;
  final bool active;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: onClick,
        child: Container(
          height: 30,
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: active ? Colors.white : Colors.transparent,
            // border: 0.5px solid rgba(0, 0, 0, 0.04);
            // box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.12), 0px 3px 1px rgba(0, 0, 0, 0.04);
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: HexColor.fromHex('#273138')),
          ),
        ),
      ),
    );
  }
}
