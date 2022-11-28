import 'package:business_mates/utils/constants.dart';
import 'package:flutter/material.dart';

class BMButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  const BMButton({Key? key, required this.onPressed, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Constants.buttonHeight,
      margin: const EdgeInsets.symmetric(
        horizontal: Constants.buttonPaddingHorizontal,
      ),
      child: ElevatedButton(
        onPressed: () => onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          backgroundColor: Theme.of(context).colorScheme.primary,
          elevation: Constants.buttonElevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              Constants.buttonBorderRadius,
            ),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
