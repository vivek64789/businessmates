import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/design/colors.dart';

class BMTextFormField extends StatefulWidget {
  final TextInputType? keyboardType;
  final TextCapitalization? textCapitalization;
  final Color? errorColor;
  final Function? onEditingComplete;
  final Function? onSaved;

  final String? hintText;
  final String? labelText;
  final String? errorText;
  final String? initialValue;
  final bool enabled;
  final bool readonly;
  final bool small;
  final bool large;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final FormFieldValidator? validator;
  final Function? onTap;
  final int? maxLines;
  final int? minLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final Widget? suffix;
  final List<TextInputFormatter>? inputFormatters;
  // final double? suffixHeight;
  // final double? suffixWidth;

  const BMTextFormField(
      {Key? key,
      this.keyboardType,
      this.textCapitalization,
      this.hintText,
      this.labelText,
      this.errorText,
      this.initialValue,
      this.enabled = true,
      this.readonly = false,
      this.small = false,
      this.large = false,
      this.onChanged,
      this.controller,
      this.validator,
      this.onTap,
      this.maxLines = 1,
      this.minLines,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      this.suffix,
      this.inputFormatters,
      this.errorColor,
      this.onEditingComplete,
      this.onSaved
      // this.suffixHeight,
      // this.suffixWidth
      })
      : super(key: key);

  @override
  State<BMTextFormField> createState() => _BMTextFormFieldState();
}

class _BMTextFormFieldState extends State<BMTextFormField> {
  OutlineInputBorder _buildOutlineBorder(
      BorderRadius borderRadius, Color color) {
    return OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: BorderSide(color: color, width: 1));
  }

  @override
  Widget build(BuildContext context) {
    EdgeInsets padding;
    double fontSize, fontHeight = 1.4, paddingVertical, paddingHorizontal;
    BorderRadius borderRadius;
    if (widget.small) {
      paddingVertical = 20;
      paddingHorizontal = 30;
      fontSize = 12;
      borderRadius = const BorderRadius.all(Radius.circular(10));
    } else if (widget.large) {
      paddingVertical = 0;
      paddingHorizontal = 15;
      padding = const EdgeInsets.symmetric(vertical: 20, horizontal: 30);
      fontSize = 16;
      borderRadius = const BorderRadius.all(Radius.circular(10));
    } else {
      paddingVertical = 20;
      paddingHorizontal = 30;
      fontSize = 14;
      borderRadius = const BorderRadius.all(Radius.circular(10));
    }

    // double computedFontHeight = fontSize * fontHeight;
    // double computedPaddingVertical = paddingVertical;
    // double computedHeight = ((paddingVertical * 2) + computedFontHeight);
    // if (widget.suffixHeight != null)
    //   computedPaddingVertical =
    //       (computedHeight - widget.suffixHeight!) / 2;
    padding = EdgeInsets.symmetric(
        vertical: paddingVertical, horizontal: paddingHorizontal);

    return Opacity(
      opacity: widget.enabled ? 1 : 0.4,
      child: TextFormField(
          onEditingComplete: widget.onEditingComplete as void Function()?,
          inputFormatters: widget.inputFormatters,
          textAlignVertical: TextAlignVertical.center,
          obscureText: widget.obscureText!,
          obscuringCharacter: '*',
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          onTap: widget.onTap as void Function()?,
          readOnly: widget.readonly,
          enabled: widget.enabled,
          initialValue: widget.initialValue,
          controller: widget.controller,
          onChanged: widget.onChanged,
          onSaved: widget.onSaved as void Function(String?)?,
          style: TextStyle(
              color: colorbackgroundSecondary300,
              fontSize: fontSize,
              height: fontHeight),
          cursorColor: Theme.of(context).colorScheme.primary,
          cursorWidth: 1,
          keyboardType: widget.keyboardType,
          textCapitalization:
              widget.textCapitalization ?? TextCapitalization.none,
          decoration: InputDecoration(
            filled: true,

            floatingLabelBehavior: FloatingLabelBehavior.auto,

            fillColor: colorbackgroundSecondary500,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            suffixIconConstraints: const BoxConstraints(maxHeight: 45),
            suffix: widget.suffix,
            errorText: widget.errorText,
            // floatingLabelBehavior: FloatingLabelBehavior.always,
            labelStyle: const TextStyle(color: colorbackgroundSecondary300),
            labelText: widget.labelText,
            floatingLabelAlignment: FloatingLabelAlignment.start,
            hintText: widget.hintText,
            hintStyle: TextStyle(color: colorSecondary300, height: fontHeight),
            isDense: true,
            contentPadding: padding,
            errorMaxLines: 2,
            errorStyle: TextStyle(color: widget.errorColor ?? colorError500),
            focusedErrorBorder:
                _buildOutlineBorder(borderRadius, colorError500),
            errorBorder: _buildOutlineBorder(borderRadius, colorError500),
            focusedBorder: _buildOutlineBorder(borderRadius, colorPrimary500),
            enabledBorder: _buildOutlineBorder(borderRadius, colorPrimary800),
            disabledBorder:
                _buildOutlineBorder(borderRadius, colorSecondary500),
          ),
          validator: widget.validator),
    );
  }
}
