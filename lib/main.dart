import 'package:business_mates/design/light_theme.dart';
import 'package:business_mates/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SmartKit',
      theme: lightTheme(),
      home: const OnBoardingScreen(),
    );
  }
}
