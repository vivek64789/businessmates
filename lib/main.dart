import 'package:business_mates/design/light_theme.dart';
import 'package:business_mates/screens/authentication/register_screen.dart';
import 'package:business_mates/screens/authentication/verify_otp_screen.dart';
import 'package:business_mates/screens/authentication/login_screen.dart';
import 'package:flutter/material.dart';

import 'screens/homepage/homepage.dart';
import 'screens/introduction_animation/introduction_animation_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Homepage.routeName: (context) => Homepage(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        RegisterScreen.routeName: (context) => const RegisterScreen(),
        VerifyOTPScreen.routeName: (context) => const VerifyOTPScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Business Mates',
      theme: lightTheme(),
      home: const IntroductionAnimationScreen(),
    );
  }
}


// #0D53F3