import 'package:flutter/material.dart';

class Responsive {
  static bool isExtraLargeScreen(BuildContext context, {minWidth = 3840}) {
    return MediaQuery.sizeOf(context).width > minWidth;
  }

  static bool isDesktop(BuildContext context, {minWidth = 900}) {
    return MediaQuery.sizeOf(context).width > minWidth;
  }

  static bool isTablet(BuildContext context, {maxWidth = 900}) {
    return MediaQuery.sizeOf(context).width < maxWidth;
  }

  static bool isLargeMobile(BuildContext context, {maxWidth = 650}) {
    return MediaQuery.sizeOf(context).width <= maxWidth;
  }

  static bool isMobile(BuildContext context, {maxWidth = 500}) {
    return MediaQuery.sizeOf(context).width <= maxWidth;
  }

  static bool isWatch(BuildContext context, {double maxWidth = 250}) => MediaQuery.sizeOf(context).width <= maxWidth;
}