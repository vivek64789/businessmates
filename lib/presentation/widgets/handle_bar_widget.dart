import 'package:flutter/material.dart';

class SheetHandleBarWidget extends StatelessWidget {
  final double width;
  final double height;
  final EdgeInsets padding;
  final EdgeInsets margin;
  const SheetHandleBarWidget({
    Key? key,
    this.width = 50,
    this.height = 5,
    this.margin = const EdgeInsets.all(0),
    this.padding = const EdgeInsets.all(0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: padding,
      margin: margin,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
