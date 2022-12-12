import 'package:flutter/material.dart';
import './colors.dart';

BoxShadow extraLargeShadow = BoxShadow(
  color: Colors.black.withOpacity(0.75),
  blurStyle: BlurStyle.outer,
  spreadRadius: 60,
);

BoxShadow largeShadow = BoxShadow(
  color: Colors.black.withOpacity(0.80),
  blurStyle: BlurStyle.outer,
  spreadRadius: 40,
);
BoxShadow mediumShadow = BoxShadow(
  color: Colors.black.withOpacity(0.85),
  blurStyle: BlurStyle.outer,
  spreadRadius: 30,
);

BoxShadow smallShadow = BoxShadow(
  color: Colors.black.withOpacity(0.90),
  blurStyle: BlurStyle.outer,
  spreadRadius: 30,
);

BoxShadow extraSmallShadow = BoxShadow(
  color: Colors.black.withOpacity(0.95),
  blurStyle: BlurStyle.outer,
  spreadRadius: 30,
);

BoxShadow greenShadow = const BoxShadow(
  color: colorBackgroundSuccess800,
  blurRadius: 30,
  spreadRadius: 10,
  blurStyle: BlurStyle.outer,
  offset: Offset(8, 3),
);
