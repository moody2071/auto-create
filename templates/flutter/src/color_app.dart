import 'package:flutter/material.dart';

// Color(0xFF5b9ee1)

const appWhite = Color(0xFFFFFFFF);
const appBlack = Color(0xFF000000);
const appt = Color(0x00ffffff);
const appGray = Color(0xff78747e);

// Light Theme Colors
const appScaffoldBackgroundColor = Color(0xFFf8f9fa);
const appPrimaryColor = Color(0xFF1a9971);

const appPrimaryColorDark = Color(0xFFFFFFFF);
const appPrimaryColorLight = Color(0xFF161f28);

const appTextColorPrimary = Color(0xFF212121);
const appIconColorPrimary = Color(0xFF1a2530);

// Dark Theme Colors
const scaffoldBackgroundColor = Color(0xFF1A2530);
const PrimaryColor = Color(0xFF1a9971);

const PrimaryColorDark = Color(0xFF161f28);
// const PrimaryColorDark = Color(0xFF161f28);
const PrimaryColorlight = Color(0xFFffffff);

const TextColorPrimary = Color(0xFFffffff);
const iconColorPrimary = Color(0xFFFFFFFF);

Map<int, Color> color = {
  50: Color.fromRGBO(91, 121, 164, .1),
  100: Color.fromRGBO(91, 121, 164, .2),
  200: Color.fromRGBO(91, 121, 164, .3),
  300: Color.fromRGBO(91, 121, 164, .4),
  400: Color.fromRGBO(91, 121, 164, .5),
  500: Color.fromRGBO(91, 121, 164, .6),
  600: Color.fromRGBO(91, 121, 164, .7),
  700: Color.fromRGBO(91, 121, 164, .8),
  800: Color.fromRGBO(91, 121, 164, .9),
  900: Color.fromRGBO(91, 121, 164, 1),
};

MaterialColor materialColor(colorHax) {
  return MaterialColor(colorHax, color);
}

MaterialColor colorCustom = MaterialColor(0xFF5B79A4, color);
