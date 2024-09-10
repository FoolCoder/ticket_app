import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color txtColor = const Color(0xFF3b3b3b);
  static Color bgcolor = const Color(0xFFeeedf2);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketRed = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);

  static TextStyle textStyle = TextStyle(
    color: txtColor,
    fontWeight: FontWeight.w500,
    fontSize: 15,
  );
  static TextStyle headline1 = TextStyle(
    color: txtColor,
    fontWeight: FontWeight.bold,
    fontSize: 25,
  );
  static TextStyle headline2 = TextStyle(
    color: txtColor,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );
  static TextStyle headline3 = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 17,
  );
}
