import 'package:flutter/material.dart';

/// Global utilities for responsive app configuration.
///
/// Set [preferDesktop] for fallback preferences; use [setScreenSize] in layout builders.
class ResponsiveAppUtil {
  /// Cached screen height after calling [setScreenSize].
  static late double height;

  /// Cached screen width after calling [setScreenSize].
  static late double width;
  /// Prefers desktop layout as fallback if true.
  static bool preferDesktop = false;

  /// Updates width/height based on [constraints] and [orientation] (swaps for landscape).
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