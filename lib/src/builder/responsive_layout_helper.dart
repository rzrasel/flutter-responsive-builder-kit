import 'package:flutter/material.dart';
import '../core/responsive_breakpoints.dart';
import '../type/device_screen_type.dart';

/// Helper for responsive layout detection and initialization.
///
/// Call [init] early in your app to cache screen data. Use static detectors for quick checks.
class ResponsiveLayoutHelper {
  static late MediaQueryData _mediaQueryData;
  /// Cached screen width after calling [init].
  static late double screenWidth;

  /// Cached screen height after calling [init].
  static late double screenHeight;

  /// Detected [DeviceScreenType] after calling [init].
  static DeviceScreenType? deviceType;

  /// Cached [Orientation] after calling [init].
  static Orientation? orientation;

  /// Initializes cached screen data from [context].
  ///
  /// Call this in your app's root (e.g., [MaterialApp] builder) for static access.
  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;

    deviceType = getDeviceType();  // Now relies on global screenWidth

    // Removed unused late vars (dead code)
  }

  /// Checks if screen is desktop-sized.
  static bool isDesktop(BuildContext context, {double minWidth = 900}) => MediaQuery.sizeOf(context).width >= minWidth;

  /// Checks if screen is tablet-sized.
  static bool isTablet(BuildContext context, {double minWidth = 650, double maxWidth = 900}) => MediaQuery.sizeOf(context).width >= minWidth && MediaQuery.sizeOf(context).width <= maxWidth;

  /// Checks if screen is mobile-sized.
  static bool isMobile(BuildContext context, {double minWidth = 250, double maxWidth = 650}) => MediaQuery.sizeOf(context).width >= minWidth && MediaQuery.sizeOf(context).width <= maxWidth;

  /// Checks if screen is watch-sized.
  static bool isWatch(BuildContext context, {double maxWidth = 250}) => MediaQuery.sizeOf(context).width <= maxWidth;

  /// Determines granular [DeviceScreenType] based on cached [screenWidth].
  ///
  /// Requires [init] to be called first.
  static DeviceScreenType getDeviceType() {
    if (screenWidth <= ResponsiveBreakpoints.mobileSmall) {
      return DeviceScreenType.mobileSmall;
    } else if (screenWidth > ResponsiveBreakpoints.mobileSmall && screenWidth <= ResponsiveBreakpoints.mobileNormal) {
      return DeviceScreenType.mobileNormal;
    } else if (screenWidth > ResponsiveBreakpoints.mobileNormal && screenWidth <= ResponsiveBreakpoints.mobileLarge) {
      return DeviceScreenType.mobileLarge;
    } else if (screenWidth > ResponsiveBreakpoints.mobileLarge && screenWidth <= ResponsiveBreakpoints.mobileExtraLarge) {
      return DeviceScreenType.mobileExtraLarge;
    } else if (screenWidth > ResponsiveBreakpoints.mobileExtraLarge && screenWidth <= ResponsiveBreakpoints.tabletSmall) {
      return DeviceScreenType.tabletSmall;
    } else if (screenWidth > ResponsiveBreakpoints.tabletSmall && screenWidth <= ResponsiveBreakpoints.tabletNormal) {
      return DeviceScreenType.tabletNormal;
    } else if (screenWidth > ResponsiveBreakpoints.tabletNormal && screenWidth <= ResponsiveBreakpoints.tabletLarge) {
      return DeviceScreenType.tabletLarge;
    } else if (screenWidth > ResponsiveBreakpoints.tabletLarge && screenWidth <= ResponsiveBreakpoints.tabletExtraLarge) {
      return DeviceScreenType.tabletExtraLarge;
    } else if (screenWidth > ResponsiveBreakpoints.tabletExtraLarge && screenWidth <= ResponsiveBreakpoints.desktopSmall) {
      return DeviceScreenType.desktopSmall;
    } else if (screenWidth > ResponsiveBreakpoints.desktopSmall && screenWidth <= ResponsiveBreakpoints.desktopNormal) {
      return DeviceScreenType.desktopNormal;
    } else if (screenWidth > ResponsiveBreakpoints.desktopNormal && screenWidth <= ResponsiveBreakpoints.desktopLarge) {
      return DeviceScreenType.desktopLarge;
    } else if (screenWidth > ResponsiveBreakpoints.desktopLarge && screenWidth <= ResponsiveBreakpoints.desktopExtraLarge) {
      return DeviceScreenType.desktopExtraLarge;
    } else {
      return DeviceScreenType.desktopExtraLarge;
    }
  }
}