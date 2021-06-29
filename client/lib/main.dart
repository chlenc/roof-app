import 'package:flutter/material.dart';
import 'package:roof_app/screens/mainScreen/mainScreen.dart';
import 'package:roof_app/screens/onboardingScreen/onboardingScreen.dart';
import 'package:roof_app/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(MyApp());
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int? initScreen = await prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);

  runApp(MyApp(
    isFirstLoad: initScreen != 1,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.isFirstLoad}) : super(key: key);
  final bool isFirstLoad;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Крышер Rooshare',
      theme: theme,
      initialRoute: isFirstLoad ? "onboarding" : "/",
      routes: {
        '/': (context) => MainScreen(),
        "onboarding": (context) => OnboardingScreen(),
      },
    );
  }
}
