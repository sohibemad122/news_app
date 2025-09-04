

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {

  static TextStyle regular12 = _textStyle(fontSize: 12, fontWeight: FontWeight.w400);
  static TextStyle regular14 = _textStyle(fontSize: 14, fontWeight: FontWeight.w400);
  static TextStyle regular16 = _textStyle(fontSize: 16, fontWeight: FontWeight.w400);
  static TextStyle regular18 = _textStyle(fontSize: 18, fontWeight: FontWeight.w400);
  static TextStyle regular20 = _textStyle(fontSize: 20, fontWeight: FontWeight.w400);
  static TextStyle regular24 = _textStyle(fontSize: 24, fontWeight: FontWeight.w400);
  static TextStyle regular28 = _textStyle(fontSize: 28, fontWeight: FontWeight.w400);
  static TextStyle regular32 = _textStyle(fontSize: 32, fontWeight: FontWeight.w400);
  static TextStyle regular36 = _textStyle(fontSize: 36, fontWeight: FontWeight.w400);

  static TextStyle medium12 = _textStyle(fontSize: 12, fontWeight: FontWeight.w500);
  static TextStyle medium14 = _textStyle(fontSize: 14, fontWeight: FontWeight.w500);
  static TextStyle medium16 = _textStyle(fontSize: 16, fontWeight: FontWeight.w500);
  static TextStyle medium18 = _textStyle(fontSize: 18, fontWeight: FontWeight.w500);
  static TextStyle medium20 = _textStyle(fontSize: 20, fontWeight: FontWeight.w500);
  static TextStyle medium24 = _textStyle(fontSize: 24, fontWeight: FontWeight.w500);
  static TextStyle medium28 = _textStyle(fontSize: 28, fontWeight: FontWeight.w500);
  static TextStyle medium32 = _textStyle(fontSize: 32, fontWeight: FontWeight.w500);
  static TextStyle medium36 = _textStyle(fontSize: 36, fontWeight: FontWeight.w500);

  static TextStyle bold12 = _textStyle(fontSize: 12, fontWeight: FontWeight.w700);
  static TextStyle bold14 = _textStyle(fontSize: 14, fontWeight: FontWeight.w700);
  static TextStyle bold16 = _textStyle(fontSize: 16, fontWeight: FontWeight.w700);
  static TextStyle bold18 = _textStyle(fontSize: 18, fontWeight: FontWeight.w700);
  static TextStyle bold20 = _textStyle(fontSize: 20, fontWeight: FontWeight.w700);
  static TextStyle bold24 = _textStyle(fontSize: 24, fontWeight: FontWeight.w700);
  static TextStyle bold28 = _textStyle(fontSize: 28, fontWeight: FontWeight.w700);
  static TextStyle bold32 = _textStyle(fontSize: 32, fontWeight: FontWeight.w700);
  static TextStyle bold36 = _textStyle(fontSize: 36, fontWeight: FontWeight.w700);

  static TextStyle _textStyle({
    required double fontSize,
    required FontWeight fontWeight,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: GoogleFonts.merriweather().fontFamily,
    );
  }
}