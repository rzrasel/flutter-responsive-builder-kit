import 'package:flutter/material.dart';
import '../core/responsive_breakpoints.dart';
import '../type/device_screen_type.dart';

class ResponsiveLayoutHelper {
  static bool _init = false;
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static DeviceScreenType? deviceType;
  static Orientation? orientation;

  static void init(BuildContext context) {
    _init = true;
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;

    deviceType = getDeviceType();

    late double defaultScreenWidth;
    late double defaultScreenHeight;
  }

  static bool isDesktop(BuildContext context, {double maxWidth = 900}) => MediaQuery.sizeOf(context).width >= maxWidth;

  static bool isTablet(BuildContext context, {double minWidth = 650, double maxWidth = 900}) => MediaQuery.sizeOf(context).width >= minWidth && MediaQuery.sizeOf(context).width <= maxWidth;

  static bool isMobile(BuildContext context, {double minWidth = 250, double maxWidth = 650}) => MediaQuery.sizeOf(context).width >= minWidth && MediaQuery.sizeOf(context).width <= maxWidth;

  static bool isWatch(BuildContext context, {double maxWidth = 250}) => MediaQuery.sizeOf(context).width <= maxWidth;

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

  /*static DeviceScreenType getDeviceType() {
    if (screenWidth <= ResponsiveBreakpoints.mobileSmall) {
      return DeviceScreenType.mobileSmall;
    } else if (screenWidth > 440 && screenWidth <= 542) {
      return DeviceScreenType.tabletSmall;
    } else if (screenWidth > 542 && screenWidth <= 628) {
      return DeviceScreenType.tabletMedium;
    } else if (screenWidth > 628 && screenWidth <= 770) {
      return DeviceScreenType.tabletLarge;
    } else if (screenWidth > 770 && screenWidth <= 842) {
      return DeviceScreenType.tabletExtraLarge;
    } else if (screenWidth > 842 && screenWidth <= 1320) {
      return DeviceScreenType.desktopSmall;
    } else if (screenWidth > 1320 && screenWidth <= 1712) {
      return DeviceScreenType.desktopMedium;
    } else if (screenWidth > 1712 && screenWidth <= 2460) {
      return DeviceScreenType.desktopLarge;
    } else {
      return DeviceScreenType.desktopExtraLarge;
    }*/
  }
}