import 'package:flutter/material.dart';
import '../../theme.dart';

class ButtonGroupItem {
  String title;
  bool active;
  void Function() onClick;

  ButtonGroupItem(this.title, this.onClick, this.active);
}

class ButtonGroup extends StatelessWidget {
  const ButtonGroup({Key? key, required this.items}) : super(key: key);
  final List<ButtonGroupItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: black200,
      ),
      height: 32,
      child: new Row(
        children: items.map((item) => Button(props: item)).toList(),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key, required this.props}) : super(key: key);
  final ButtonGroupItem props;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: props.onClick,
        child: Container(
          height: 30,
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: props.active ? Colors.white : Colors.transparent,
            // border: 0.5px solid rgba(0, 0, 0, 0.04);
            // box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.12), 0px 3px 1px rgba(0, 0, 0, 0.04);
          ),
          child: Text(
            props.title,
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
