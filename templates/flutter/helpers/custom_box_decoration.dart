import 'dart:io';

import '../src/color_app.dart';
import 'package:flutter/material.dart';

BoxDecoration boxDecoration({
  double radius = 1,
  Color colorBorder = Colors.transparent,
  Color bgColor = appWhite,
  int colorType = 0, //0 for one color 1 for gradient color
  Color color1 = appWhite,
  Color color2 = appWhite,
  List<double> stops = const [0.5, 1],
  bool isShowShadow = false,
  Color showShadow = appBlack,
  bool imageExsit = false,
  double spreadRadius = 4,
  Offset offset = Offset.zero,
  double widthBorder = 4,
  double strokeBorder = BorderSide.strokeAlignInside,
  double blurRadius = 10,
  int imagetype = 0, // 0 for asset 1 for network 2 for file
  String imageAsset = '',
  String imageUrl = '',
  String imagepath = '',
  BorderRadiusGeometry? borderRadiusGeometry,
  Alignment gradientBegin = Alignment.topLeft,
  Alignment gradientEnd = Alignment.bottomRight,
  BoxFit boxfit = BoxFit.contain,
  BlurStyle blurStyle = BlurStyle.normal,
}) {
  return BoxDecoration(
    // gradient: LinearGradient(colors: [bgColor, whiteColor]),
    color: colorType == 0 ? bgColor : appWhite,
    gradient: colorType == 0
        ? LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [
            bgColor,
            bgColor,
          ])
        : LinearGradient(
            begin: gradientBegin,
            end: gradientEnd,
            colors: [
              color1,
              color2,
            ],
            stops: stops),
    image: imageExsit
        ? imagetype == 0
            ? DecorationImage(image: AssetImage(imageAsset), fit: boxfit)
            : imagetype == 1
                ? DecorationImage(image: NetworkImage(imageUrl), fit: boxfit)
                : imagetype == 2
                    ? DecorationImage(
                        image: FileImage(
                          File(imagepath),
                        ),
                        fit: boxfit)
                    : DecorationImage(image: AssetImage(''))
        : null,
    boxShadow: isShowShadow
        ? [
            BoxShadow(
                blurStyle: blurStyle,
                offset: offset,
                color: showShadow.withOpacity(0.3),
                blurRadius: blurRadius,
                spreadRadius: spreadRadius)
          ]
        : [BoxShadow(color: Colors.transparent)],
    border: colorType == 0
        ? Border.all(
            color: colorBorder,
            width: widthBorder,
            strokeAlign: strokeBorder,
          )
        : Border(
            top: BorderSide(
              style: BorderStyle.solid,
              color: color1,
              width: 1,
              strokeAlign: 0,
            ),
          ),
    borderRadius: borderRadiusGeometry ??
        BorderRadius.all(
          Radius.circular(radius),
        ),
  );
}
