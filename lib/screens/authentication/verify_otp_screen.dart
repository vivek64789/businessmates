import 'package:business_mates/screens/authentication/register_screen.dart';
import 'package:business_mates/screens/homepage/home.dart';
import 'package:business_mates/widgets/bm_button.dart';
import 'package:business_mates/widgets/filled_otp_rounded_widget.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../homepage/homepage.dart';

class VerifyOTPScreen extends StatelessWidget {
  static const routeName = '/verify-otp-screen';
  const VerifyOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // design for the top of the screen
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Verify your OTP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Enter the OTP sent to your email',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            // modern design for change email address

            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(
                  RegisterScreen.routeName,
                );
              },
              child: Text(
                'Click here to Change Email Address',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 12,
                ),
              ),
            ),

            // design for the bottom of the screen
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: Constants.formFieldMarginHorizontal),
              child: FilledRoundedPinPut(
                onComplete: () {},
              ),
            ),

            const SizedBox(
              height: 50,
            ),
            BMButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(
                    HomePage.routeName,
                  );
                },
                text: "Verify"),
            // resend otp
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Resend OTP',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
