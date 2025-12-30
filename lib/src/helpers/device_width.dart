import 'dart:io';
import 'dart:ui';

/// Calculates the effective device width for responsive detection.
///
/// On desktop platforms (MacOS, Windows, Linux), returns the full [size.width].
/// On mobile platforms, returns [size.shortestSide] to account for orientation (portrait/landscape).
double deviceWidth(Size size) {
  if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
    return size.width;
  }
  return size.shortestSide;
}
