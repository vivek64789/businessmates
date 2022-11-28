import 'package:business_mates/design/app_icons.dart';
import 'package:business_mates/utils/constants.dart';
import 'package:business_mates/widgets/bm_button.dart';
import 'package:business_mates/widgets/bm_text_form_field.dart';
import 'package:flutter/material.dart';

class BMRegisterScreen extends StatefulWidget {
  const BMRegisterScreen({super.key});

  @override
  State<BMRegisterScreen> createState() => _BMRegisterScreenState();
}

class _BMRegisterScreenState extends State<BMRegisterScreen> {
  bool isHidden = true;

  bool isHiddenConfirm = true;

  bool isChecked = false;

  final _setPasswordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Business Mates',
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: Constants.formFieldBetweenSpacing,
            ),
            SizedBox(
              height: 200,
              child: Image.network(
                  "https://3dicons.sgp1.cdn.digitaloceanspaces.com/v1/dynamic/premium/file-text-dynamic-premium.png"),
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
            const SizedBox(
              height: Constants.formFieldBetweenSpacing,
            ),
            BMButton(onPressed: () {}, text: "Login"),
          ],
        ),
      ),
    );
  }
}
