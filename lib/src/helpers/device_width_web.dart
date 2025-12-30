import 'dart:ui';

/// Calculates the effective device width for responsive detection on web.
///
/// Always returns [size.width] as web environments do not require orientation-based adjustments.
double deviceWidth(Size size) => size.width;
