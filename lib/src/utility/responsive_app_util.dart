import 'package:flutter/material.dart';

class ResponsiveAppUtil {
  static late double height;
  static late double width;
  static bool preferDesktop = false;

  static void setScreenSize(
      BoxConstraints constraints,
      Orientation orientation,
      ) {
    if (orientation == Orientation.portrait) {
      width = constraints.maxWidth;
      height = constraints.maxHeight;
    } else {
      width = constraints.maxHeight;
      height = constraints.maxWidth;
    }
  }
}