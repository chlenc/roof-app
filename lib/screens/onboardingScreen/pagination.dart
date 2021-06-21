import 'package:flutter/material.dart';

class Pagination extends StatefulWidget {
  const Pagination({Key? key, required this.index, required this.count})
      : super(key: key);
  final int index;
  final int count;

  @override
  _PaginationState createState() => _PaginationState();
}

class _PaginationState extends State<Pagination> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];
    int i;
    for (i = 0; i < widget.count; i++) {
      items.add(i == widget.index ? Pipe() : Dot());
    }
    return Row(
      children: items,
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}

class Dot extends StatelessWidget {
  const Dot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        width: 6,
        height: 6,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.56),
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}

class Pipe extends StatelessWidget {
  const Pipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        width: 32,
        height: 6,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
    );
  }
}
