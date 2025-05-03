// ignore: unused_import
import 'package:flutter/material.dart';

extension intNumber on String {
  toInt() {
    return int.parse(this);
  }
}

extension push on BuildContext {
  next(String page) {
    return Navigator.of(this).pushNamed(page);
  }

  close() {
    return Navigator.of(this).pop();
  }

  snackBar(SnackBar sb) {
    ScaffoldMessenger.of(this).showSnackBar(sb);
  }
}
