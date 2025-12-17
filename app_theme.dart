import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CometTheme {
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: CometColors.background,
    primaryColor: CometColors.neonBlue,
    hintColor: CometColors.softPurple,
    fontFamily: 'CometFont',
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(color: CometColors.neonBlue, fontSize: 18, fontWeight: FontWeight.bold),
    ),
    cardTheme: CardTheme(
      color: CometColors.cardBg,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
  );
}