import 'package:flutter/material.dart';

class AppColors {
  static const Color blue = Color.fromARGB(255, 0, 119, 255);
  static const Color onSecondary1 = Color(0xFF000000);
  static const Color onSecondary2 = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey = Color.fromARGB(158, 255, 255, 255);
  static const Color white = Color(0xFFFFFFFF);
  static const Color error = Color.fromARGB(255, 255, 42, 0);
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
