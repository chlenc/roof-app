import 'package:flutter/material.dart';

import '../theme.dart';

class MenuItemData {
  Icon icon;
  Icon activeIcon;
  String label;

  MenuItemData(this.icon, this.activeIcon, this.label);
}

List<MenuItemData> menuItems = [
  MenuItemData(
    Icon(Icons.location_on_outlined),
    Icon(Icons.location_on),
    'Карта',
  ),
  MenuItemData(
    Icon(Icons.bookmark_border),
    Icon(Icons.bookmark),
    'Избранные',
  ),
  MenuItemData(
    Icon(Icons.notifications_none),
    Icon(Icons.notifications),
    'Уведомления',
  ),
  MenuItemData(
    Icon(Icons.settings),
    Icon(Icons.settings),
    'Настройки',
  ),
];

class BottomMenu extends StatefulWidget {
  const BottomMenu({Key? key, required this.currentIndex, required this.onTap})
      : super(key: key);
  final int currentIndex;
  final void Function(int value) onTap;

  @override
  _BottomMenuState createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: menuItems
          .map(
            (item) => BottomNavigationBarItem(
              icon: item.icon,
              activeIcon: item.activeIcon,
              label: item.label,
            ),
          )
          .toList(),
      currentIndex: widget.currentIndex,
      unselectedItemColor: HexColor.fromHex('#A1A8B1'),
      selectedItemColor: HexColor.fromHex('#3978F2'),
      onTap: widget.onTap,
    );
  }
}
