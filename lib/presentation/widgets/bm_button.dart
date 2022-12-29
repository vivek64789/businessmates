import 'package:flutter/material.dart';

import '../../core/utils/constants.dart';

class BMButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final bool isLoading;
  final Color? color;
  final Color? foregroundColor;
  final bool outlined;

  const BMButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.isLoading = false,
    this.color,
    this.foregroundColor,
    this.outlined = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: double.infinity,
      height: Constants.buttonHeight,
      margin: const EdgeInsets.symmetric(
        horizontal: Constants.buttonPaddingHorizontal,
      ),
      child: ElevatedButton(
        onPressed: isLoading ? null : () => onPressed(),
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: Theme.of(context).colorScheme.secondary,
          foregroundColor:
              foregroundColor ?? Theme.of(context).colorScheme.onPrimary,
          backgroundColor: color ?? Theme.of(context).colorScheme.primary,
          elevation: Constants.buttonElevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              Constants.buttonBorderRadius,
            ),
          ),
        ),
        child: isLoading
            ? CircularProgressIndicator(
                color: Theme.of(context).colorScheme.onPrimary,
              )
            : Text(text),
      ),
    );
  }
}
