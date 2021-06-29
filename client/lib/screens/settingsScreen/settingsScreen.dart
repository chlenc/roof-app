import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roof_app/screens/settingsScreen/section.dart';
import 'package:roof_app/screens/settingsScreen/sectionDivider.dart';
import 'package:roof_app/screens/settingsScreen/sectionRow.dart';
import 'package:roof_app/theme.dart';
import 'package:roof_app/widgets/select.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 48, left: 16, right: 16),
            child: Text(
              "Настройки",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.w800,
                fontSize: 32,
                color: HexColor.fromHex('#273138'),
              ),
            ),
          ),
          Section(
            title: "Интерфейс",
            children: [
              SectionRow(
                title: 'Язык',
                child: Select(
                  selectedValue: "Русский",
                  values: ["Русский"],
                  onChange: (String? value) => null,
                ),
              ),
              SectionDivider(),
              SectionRow(
                title: 'Ночная тема',
                verticalPadding: 4,
                child: Transform.scale(
                  scale: 0.8,
                  child: CupertinoSwitch(
                    value: false,
                    onChanged: (bool value) => null,
                  ),
                ),
              ),
            ],
          ),
          Section(
            title: "Уведомления",
            children: [
              SectionRow(
                title: 'Частота',
                child: Select(
                  selectedValue: "Очень редко",
                  values: ["Очень редко"],
                  onChange: (String? value) => null,
                ),
              ),
              SectionDivider(),
              SectionRow(
                title: 'Популярные крыши',
                verticalPadding: 4,
                child: Transform.scale(
                  scale: 0.8,
                  child: CupertinoSwitch(
                    activeColor: HexColor.fromHex('#3978F2'),
                    value: true,
                    onChanged: (bool value) => null,
                  ),
                ),
              ),
              SectionDivider(),
              SectionRow(
                title: 'Пауза уведомлений',
                verticalPadding: 4,
                child: Transform.scale(
                  scale: 0.8,
                  child: CupertinoSwitch(
                    value: false,
                    onChanged: (bool value) => null,
                  ),
                ),
              ),
            ],
          ),
          Section(
            title: "Полезные ссылки",
            children: [
              SectionRow(
                title: 'FAQ',
                verticalPadding: 8,
                child: Icon(
                  Icons.link,
                  color: HexColor.fromHex('#A1A8B1'),
                ),
              ),
              SectionDivider(),
              SectionRow(
                title: 'Правила сообщества',
                verticalPadding: 8,
                child: Icon(
                  Icons.link,
                  color: HexColor.fromHex('#A1A8B1'),
                ),
              ),
              SectionDivider(),
              SectionRow(
                title: 'Политика конфиденциальности',
                verticalPadding: 8,
                child: Icon(
                  Icons.link,
                  color: HexColor.fromHex('#A1A8B1'),
                ),
              ),
              SectionDivider(),
            ],
          ),
        ],
      ),
    );
  }
}
