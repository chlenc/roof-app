import 'package:flutter/material.dart';

class SectionRow extends StatelessWidget {
  const SectionRow({
    Key? key,
    required this.title,
    required this.child,
    this.verticalPadding = 0,
  }) : super(key: key);
  final String title;
  final Widget child;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 16)),
          child,
        ],
      ),
    );
  }
}
