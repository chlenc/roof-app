import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'pagination.dart';

class OnboardingScreenData {
  String title;
  String subtitle;
  String bthText;

  OnboardingScreenData(this.title, this.subtitle, this.bthText);
}

List<OnboardingScreenData> pages = [
  OnboardingScreenData(
      'Найди лучшие виды\nСанкт-Петербурга',
      'Открытые крыши с видом на Казанский и Исаакиевский саборы, здание Зингера, Невский проспект, разводные мосты и др.',
      'Далее'),
  OnboardingScreenData(
      'Добавляй новые \nместа на карту',
      'Знаете открытые крыши с отличным видом? Добавляйте их на карту!',
      'Далее'),
  OnboardingScreenData(
      'Сохраняй места,\nчтобы не потерять',
      'Понравился вид? Добавь крышу в избранное, чтобы в следующий раз было легко её найти!',
      'Далее'),
  OnboardingScreenData(
      'Разреши использование геопозиции',
      'Так вам будет легче находить близжайшие открытые крыши и строить к ним маршруты.',
      'Разрешить'),
];

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int page = 0;

  void _nextOnboardingPage() {
    if (page < pages.length - 1) {
      setState(() {
        page++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SvgPicture.asset(
                    'images/onboarding-' + page.toString() + '.svg',
                    semanticsLabel: 'Acme Logo',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Text(pages[page].title,
                          style: Theme.of(context).textTheme.headline2,
                          textAlign: TextAlign.center)),
                  SizedBox(height: 12),
                  Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Container(
                        height: 72,
                        child: Text(pages[page].subtitle,
                            style: Theme.of(context).textTheme.bodyText1,
                            textAlign: TextAlign.center),
                      )),
                  SizedBox(height: 32),
                  Pagination(index: page, count: pages.length),
                  SizedBox(height: 54),
                  MaterialButton(
                    minWidth: 240,
                    height: 56,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    onPressed: _nextOnboardingPage,
                    child: Text(
                      pages[page].bthText,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
