import 'package:flutter/material.dart';

class Style {
  static const colorMeta = Color(0xffC6C6C8);
  static const colorLightGrey = Color(0xffD8D8D8);
  static BoxDecoration kBoxDecorationStyle = BoxDecoration(
    color: Colors.white,
    border: Border.all(width: 1, color: colorLightGrey),
    borderRadius: BorderRadius.circular(30.0),
  );
  static const kHintTextStyle = TextStyle(
    color: colorMeta,
  );
  static const textTitleMedium = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );
  static const textBodyMedium = TextStyle(fontSize: 16, color: Colors.red);
  static const textBodyLarge =
      TextStyle(fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold);
}
