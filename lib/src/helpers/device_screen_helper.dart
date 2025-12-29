import 'package:flutter/material.dart';
import '../core/screen_breakpoints.dart';
import '../type/device_screen_type.dart';
import '../utility/responsive_sizing_config.dart';
import 'device_width.dart' if (dart.library.js) 'device_width_web.dart'
as width;

DeviceScreenType getDeviceType(
    Size size, [
      ScreenBreakpoints? breakpoint,
    ]) {
  double deviceWidth = width.deviceWidth(size);

  // Replaces the defaults with the user defined definitions
  if (breakpoint != null) {
    if (deviceWidth > breakpoint.desktop) {
      return DeviceScreenType.desktop;
    }

    if (deviceWidth > breakpoint.tablet) {
      return DeviceScreenType.tablet;
    }

    if (deviceWidth < breakpoint.watch) {
      return DeviceScreenType.watch;
    }
  } else {
    // If no user defined definitions are passed through use the defaults
    if (deviceWidth >= ResponsiveSizingConfig.instance.breakpoints.desktop) {
      return DeviceScreenType.desktop;
    }

    if (deviceWidth >= ResponsiveSizingConfig.instance.breakpoints.tablet) {
      return DeviceScreenType.tablet;
    }

    if (deviceWidth < ResponsiveSizingConfig.instance.breakpoints.watch) {
      return DeviceScreenType.watch;
    }
  }

  return DeviceScreenType.mobile;
}