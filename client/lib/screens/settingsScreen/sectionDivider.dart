import 'package:flutter/material.dart';
import '../../theme.dart';

class SectionDivider extends StatelessWidget {
  const SectionDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: HexColor.fromHex('#EDF1F5'),
      height: 1,
      indent: 16,
      endIndent: 16,
    );
  }
}
