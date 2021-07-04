import 'package:flutter/material.dart';

class Roof extends StatelessWidget {
  const Roof({
    Key? key,
    required this.title,
    required this.photo,
    required this.distance,
    required this.time,
    // required this.isLast,
  }) : super(key: key);
  final String title;

  final String photo;
  final int distance;
  final int time; //minutes
  // final bool isLast;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        color: Colors.amber[600],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: []),
            Container(
              width: 100.0,
              height: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Colors.redAccent,
              ),
              child: Image.network(photo, width: 108, height: 72),
            ),
          ],
        ));
  }
}
