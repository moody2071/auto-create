import 'package:flutter/material.dart';

//Screen coordinates and the default size of the font
double wScreen = 0;
double hScreen = 0;
double fSize = 0;

initializeHWFSize(BuildContext context) async {
  wScreen = MediaQuery.sizeOf(context).width;
  hScreen = MediaQuery.sizeOf(context).height;
  fSize = wScreen / 25;
}

double fontSize({required double size}) {
  double scaleFactor = getScaleFactor();
  double responsiveFontSize = size * scaleFactor;
  double lowerLimit = size * .8;
  double upperLimit = size * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  if (wScreen < 600) {
    return wScreen / 400; //mobile
  } else if (wScreen < 900) {
    return wScreen / 700; //tablet
  } else {
    return wScreen / 1000; //desktop
  }
}
