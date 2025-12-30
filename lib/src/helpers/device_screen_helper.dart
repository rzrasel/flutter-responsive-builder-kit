import 'package:flutter/material.dart';
import '../core/screen_breakpoints.dart';
import '../type/device_screen_type.dart';
import '../utility/responsive_sizing_config.dart';
import 'device_width.dart' if (dart.library.js) 'device_width_web.dart'
as width;

/// Determines the [DeviceScreenType] based on [size] and optional [breakpoint] overrides.
///
/// Defaults to [ResponsiveSizingConfig] breakpoints if none provided.
DeviceScreenType getDeviceType(
    Size size, [
      /// Custom [ScreenBreakpoints] to use instead of defaults.
      ScreenBreakpoints? breakpoint,
    ]) {
  double deviceWidth = width.deviceWidth(size);  // From conditional import

  if (breakpoint != null) {
    if (deviceWidth > breakpoint.desktop) return DeviceScreenType.desktop;
    if (deviceWidth > breakpoint.tablet) return DeviceScreenType.tablet;
    if (deviceWidth < breakpoint.watch) return DeviceScreenType.watch;
  } else {
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