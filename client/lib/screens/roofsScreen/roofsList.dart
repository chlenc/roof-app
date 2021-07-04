import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roof_app/screens/roofsScreen/roof.dart';
import 'package:roof_app/widgets/screenTitle.dart';

class RoofClass {
  String title;

  RoofClass(this.title);
}

List<RoofClass> roofs = [
  RoofClass('Крыша 1'),
  RoofClass('Крыша 2'),
  RoofClass('Крыша 3'),
  RoofClass('Крыша 4'),
  RoofClass('Крыша 5'),
  RoofClass('Крыша 6'),
];
List<String> items = List<String>.generate(10000, (i) => 'Item $i');

class RoofsList extends StatelessWidget {
  const RoofsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 48, left: 16, right: 16, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          ScreenTitle("Крыши рядом"),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('Найдено 236 крыш'), Text('По близости')],
          ),
          SizedBox(height: 24),
          Expanded(
              child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('${items[index]}'),
              );
            },
          ))
          // Roof(
          //   title: "Крыша на канале Грибоедова",
          //   distance: 362,
          //   time: 3,
          //   photo:
          //       "http://visit-petersburg.ru/media/uploads/tourobject/199255/199255_cover.jpg.1050x700_q95_crop_upscale.jpg",
          // ),
          // CupertinoButton.filled(
          //   child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       children: [
          //         Icon(CupertinoIcons.add_circled),
          //         Text('Добавить крышу')
          //       ]),
          //   onPressed: () => {},
          // ),
        ],
      ),
    );
  }
}
