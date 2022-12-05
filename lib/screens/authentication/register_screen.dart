import 'package:business_mates/design/app_icons.dart';
import 'package:business_mates/screens/authentication/login_screen.dart';
import 'package:business_mates/screens/authentication/verify_otp_screen.dart';
import 'package:business_mates/utils/constants.dart';
import 'package:business_mates/widgets/bm_button.dart';
import 'package:business_mates/widgets/bm_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static const routeName = '/register-screen';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isHidden = true;

  bool isHiddenConfirm = true;

  bool isChecked = false;

  final _setPasswordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                'Create your new account',
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: Constants.formFieldBetweenSpacing,
              ),
              SizedBox(
                height: 200,
                child: SvgPicture.asset(
                  "assets/images/login.svg",
                  fit: BoxFit.contain,
                ),
              ),

              // Email form field
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: Constants.formFieldMarginHorizontal),
                child: const BMTextFormField(
                  hintText: 'Email',
                  // labelText: 'Email',
                  prefixIcon: Icon(BMIcon.envelope),
                ),
              ),
              //  Password form field
              const SizedBox(
                height: Constants.formFieldBetweenSpacing,
              ),
              // Password form field
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: Constants.formFieldMarginHorizontal),
                child: BMTextFormField(
                  hintText: 'Password',
                  prefixIcon: const Icon(BMIcon.lock),
                  onChanged: (v) {
                    if (isChecked) {
                      setState(() {
                        isChecked = false;
                        _setPasswordFormKey.currentState!.reset();
                      });
                    }
                  },
                  obscureText: isHidden,
                  suffixIcon: IconButton(
                    icon: Icon(
                      isHidden ? BMIcon.eye : BMIcon.eye_slash,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                    onPressed: () {
                      setState(() {
                        isHidden = !isHidden;
                      });
                    },
                  ),
                ),
              ),
              // Password form field end
              //  Password form field
              const SizedBox(
                height: Constants.formFieldBetweenSpacing,
              ),
              // Password form field
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: Constants.formFieldMarginHorizontal),
                child: BMTextFormField(
                  hintText: 'Confirm Password',
                  prefixIcon: const Icon(BMIcon.lock),
                  onChanged: (v) {
                    if (isChecked) {
                      setState(() {
                        isChecked = false;
                        _setPasswordFormKey.currentState!.reset();
                      });
                    }
                  },
                  obscureText: isHidden,
                ),
              ),
              // Password form field end
              const SizedBox(
                height: Constants.formFieldBetweenSpacing,
              ),
              BMButton(
                  onPressed: () {
                    print("dsf");
                    Navigator.of(context).pushReplacementNamed(
                      VerifyOTPScreen.routeName,
                    );
                  },
                  text: "Register"),
              const SizedBox(
                height: Constants.formFieldBetweenSpacing,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(
                        LoginScreen.routeName,
                      );
                    },
                    child: Text(
                      "Login up",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
