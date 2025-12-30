import 'package:flutter/material.dart';

/// Utility class for quick responsive checks without full [ResponsiveBuilder].
///
/// Use static methods to detect screen types based on width thresholds.
/// Defaults are tunable via named parameters.
class Responsive {
  /// Checks if screen is extra-large (e.g., 4K+ desktops).
  static bool isExtraLargeScreen(BuildContext context, {double minWidth = 3840}) {
    return MediaQuery.sizeOf(context).width > minWidth;
  }

  /// Checks if screen is desktop-sized.
  static bool isDesktop(BuildContext context, {double minWidth = 900}) {
    return MediaQuery.sizeOf(context).width > minWidth;
  }

  /// Checks if screen is tablet-sized (below desktop threshold).
  static bool isTablet(BuildContext context, {double maxWidth = 900}) {
    return MediaQuery.sizeOf(context).width < maxWidth;
  }

  /// Checks if screen is large mobile (up to tablet min).
  static bool isLargeMobile(BuildContext context, {double maxWidth = 650}) {
    return MediaQuery.sizeOf(context).width <= maxWidth;
  }

  /// Checks if screen is standard mobile.
  static bool isMobile(BuildContext context, {double maxWidth = 500}) {
    return MediaQuery.sizeOf(context).width <= maxWidth;
  }

  /// Checks if screen is watch-sized.
  static bool isWatch(BuildContext context, {double maxWidth = 250}) => MediaQuery.sizeOf(context).width <= maxWidth;
}