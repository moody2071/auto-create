import 'package:flutter/material.dart';
import 'color_app.dart';
import 'sizes.dart';
import 'constants.dart';

class AppTextStyle {
  static AppTextStyle instance = AppTextStyle();

  TextStyle displayLarge = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 57),
    fontWeight: FontWeight.bold,
    fontFamily: defaultFont,
  );
  TextStyle displayMedium = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 45),
    fontWeight: FontWeight.bold,
    fontFamily: defaultFont,
  );
  TextStyle displaySmall = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 30),
    fontWeight: FontWeight.bold,
    fontFamily: defaultFont,
  );
  TextStyle headlineLarge = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 32),
    fontWeight: FontWeight.bold,
    fontFamily: defaultFont,
  );
  TextStyle headlineMedium = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 28),
    fontWeight: FontWeight.bold,
    fontFamily: defaultFont,
  );
  TextStyle headlineSmall = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 22),
    fontFamily: defaultFont,
  );

  //no used in other use
  TextStyle titleLarge = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 24),
    fontFamily: defaultFont,
  );
  TextStyle titleMedium = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 22),
    fontFamily: defaultFont,
  );
  TextStyle titleSmall = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 20),
    fontFamily: defaultFont,
  );
  TextStyle labelLarge = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 14),
    fontFamily: defaultFont,
  );
  TextStyle labelMedium = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 12),
    fontFamily: defaultFont,
  );
  TextStyle labelSmall = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 10),
    fontFamily: defaultFont,
  );
  TextStyle bodyLarge = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 18),
    fontFamily: defaultFont,
  );
  //card
  TextStyle bodyMedium = TextStyle(
    color: appTextColorPrimary,
    fontSize: fontSize(size: 15),
    fontFamily: defaultFont,
  );
  TextStyle bodySmall = TextStyle(
    // color: blackGrey,
    color: appTextColorPrimary,
    fontFamily: defaultFont,
    fontSize: fontSize(size: 16),
  );
}
