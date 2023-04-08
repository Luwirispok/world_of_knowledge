import 'package:flutter/material.dart';

class AppColors {
  static const Color onSecondary1 = Color(0xFF000000);
  static const Color onSecondary2 = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color(0xFF151515);
  static const Color white = Color(0xFFFFFFFF);
  static const Color error = Color(0xFFFC5230);
  static const Color onError = Color(0xFFFFFFFF);
  static LinearGradient secondary = const LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xFFFFFFFF),
      Color(0xFFFFED00),
      Color(0xFFFDC200),
    ],
  );
}
