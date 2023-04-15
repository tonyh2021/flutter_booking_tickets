import 'package:flutter/material.dart';

const primary = Color(0xFF678daf);

class Styles {
  static const Color primaryColor = primary;
  static const Color textColor = Color(0xFF3b3b3b);
  static const Color bgColor = Color(0xFFeeedf2);
  static const Color blueColor = Color(0xFF526799);
  static const Color orangeColor = Color(0xFFf37b67);
  static const Color kakiColor = Color(0xFFd2bdb6);

  static TextStyle textStyle = const TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 = const TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = const TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}