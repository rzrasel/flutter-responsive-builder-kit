import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../core/refined_breakpoints.dart';
import '../type/device_screen_type.dart';
import '../type/refined_size.dart';
import '../utility/responsive_sizing_config.dart';
import 'device_screen_helper.dart';

/// Determines [RefinedSize] variant within [DeviceScreenType] based on [size].
///
/// Supports custom [refinedBreakpoint]; defaults to [ResponsiveSizingConfig].
/// Adjusts for web/desktop (uses full width) vs. mobile (shortest side).
RefinedSize getRefinedSize(
    Size size, {
      /// Custom breakpoints for refined sizing.
      RefinedBreakpoints? refinedBreakpoint,
      /// Force web/desktop width logic (defaults to [kIsWeb]).
      bool isWebOrDesktop = kIsWeb,
    }) {
  DeviceScreenType deviceScreenType = getDeviceType(size);
  double deviceWidth = size.shortestSide;

  if (isWebOrDesktop) {
    deviceWidth = size.width;
  }

  // User-defined breakpoints
  if (refinedBreakpoint != null) {
    if (deviceScreenType == DeviceScreenType.desktop) {
      if (deviceWidth > refinedBreakpoint.desktopExtraLarge) {
        return RefinedSize.extraLarge;
      }

      if (deviceWidth > refinedBreakpoint.desktopLarge) {
        return RefinedSize.large;
      }

      if (deviceWidth > refinedBreakpoint.desktopNormal) {
        return RefinedSize.normal;
      }
    }

    if (deviceScreenType == DeviceScreenType.tablet) {
      if (deviceWidth > refinedBreakpoint.tabletExtraLarge) {
        return RefinedSize.extraLarge;
      }

      if (deviceWidth > refinedBreakpoint.tabletLarge) {
        return RefinedSize.large;
      }

      if (deviceWidth > refinedBreakpoint.tabletNormal) {
        return RefinedSize.normal;
      }
    }

    if (deviceScreenType == DeviceScreenType.mobile) {
      if (deviceWidth > refinedBreakpoint.mobileExtraLarge) {
        return RefinedSize.extraLarge;
      }

      if (deviceWidth > refinedBreakpoint.mobileLarge) {
        return RefinedSize.large;
      }

      if (deviceWidth > refinedBreakpoint.mobileNormal) {
        return RefinedSize.normal;
      }
    }

    if (deviceScreenType == DeviceScreenType.watch) {
      return RefinedSize.normal;
    }
  } else {
    // If no user defined definitions are passed through use the defaults

    // Desktop
    if (deviceScreenType == DeviceScreenType.desktop) {
      if (deviceWidth >=
          ResponsiveSizingConfig
              .instance.refinedBreakpoints.desktopExtraLarge) {
        return RefinedSize.extraLarge;
      }

      if (deviceWidth >=
          ResponsiveSizingConfig.instance.refinedBreakpoints.desktopLarge) {
        return RefinedSize.large;
      }

      if (deviceWidth >=
          ResponsiveSizingConfig.instance.refinedBreakpoints.desktopNormal) {
        return RefinedSize.normal;
      }
    }

    // Tablet
    if (deviceScreenType == DeviceScreenType.tablet) {
      if (deviceWidth >=
          ResponsiveSizingConfig.instance.refinedBreakpoints.tabletExtraLarge) {
        return RefinedSize.extraLarge;
      }

      if (deviceWidth >=
          ResponsiveSizingConfig.instance.refinedBreakpoints.tabletLarge) {
        return RefinedSize.large;
      }

      if (deviceWidth >=
          ResponsiveSizingConfig.instance.refinedBreakpoints.tabletNormal) {
        return RefinedSize.normal;
      }
    }

    // Mobile
    if (deviceScreenType == DeviceScreenType.mobile) {
      if (deviceWidth >=
          ResponsiveSizingConfig.instance.refinedBreakpoints.mobileExtraLarge) {
        return RefinedSize.extraLarge;
      }

      if (deviceWidth >=
          ResponsiveSizingConfig.instance.refinedBreakpoints.mobileLarge) {
        return RefinedSize.large;
      }

      if (deviceWidth >=
          ResponsiveSizingConfig.instance.refinedBreakpoints.mobileNormal) {
        return RefinedSize.normal;
      }
    }
  }

  return RefinedSize.small;
}