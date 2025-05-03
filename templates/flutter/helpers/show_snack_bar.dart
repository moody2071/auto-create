// import 'package:shein/res/color_app.dart';
import 'package:flutter/material.dart';
import '../src/sizes.dart';

showSnackBar(
  BuildContext context, {
  required String message,
  Color? backgroundColor = null,
  Color? fontColor = null,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: Duration(seconds: 2),
      backgroundColor: backgroundColor,
      content: Text(
        message,
        style: TextStyle(
          color: fontColor,
          fontSize: fontSize(size: 15),
        ),
      ),
      // backgroundColor: Colors.grey[900],
    ),
  );
}

showToast(
  BuildContext context, {
  required String message,
}) {
// Customize the SnackBar to look like an iPhone toast
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      backgroundColor: Colors.black.withOpacity(0.8),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      duration: Duration(seconds: 2),
    ),
  );
}
