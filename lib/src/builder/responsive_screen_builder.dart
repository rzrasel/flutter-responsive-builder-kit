import 'package:flutter/material.dart';
import '../core/screen_breakpoints.dart';
import '../type/device_screen_type.dart';
import '../utility/responsive_app_util.dart';
import '../utility/responsive_builder.dart';

/// Builds responsive screens by selecting layouts based on device type.
///
/// Supports watch/mobile/tablet/desktop; falls back to mobile if unspecified.
/// Requires at least mobile or desktop builder.
class ResponsiveScreenBuilder extends StatelessWidget {
  /// Optional custom [ScreenBreakpoints] to override default device detection thresholds.
  final ScreenBreakpoints? breakpoints;

  /// Builder for desktop devices.
  final WidgetBuilder? desktop;
  /// Builder for tablet devices.
  final WidgetBuilder? tablet;
  /// Builder for mobile devices.
  final WidgetBuilder? mobile;
  /// Builder for watch-sized devices.
  final WidgetBuilder? watch;

  /// Named constructor for [ResponsiveScreenBuilder].
  ///
  /// Initializes with optional builders for different screen types.
  /// Requires at least [mobile] or [desktop] to be provided; validated internally.
  /// Use this to build adaptive layouts based on device detection.
  ResponsiveScreenBuilder.builder({
    super.key,
    this.breakpoints,
    this.desktop,
    this.tablet,
    this.mobile,
    this.watch,
  }) {
    _checkIfMobileOrDesktopIsSupplied();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      breakpoints: breakpoints,
      builder: (context, sizingInformation) {
        // If we're at desktop size
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          // If we have supplied the desktop layout then display that
          if (desktop != null) return desktop!(context);
          // If no desktop layout is supplied we want to check if we have the size below it and display that
          if (tablet != null) return tablet!(context);
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          if (tablet != null) return tablet!(context);
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.watch &&
            watch != null) {
          return watch!(context);
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          if (mobile != null) return mobile!(context);
        }

        // If none of the layouts above are supplied we use the prefered layout based on the flag
        final buildDesktopLayout =
            ResponsiveAppUtil.preferDesktop && desktop != null;

        return buildDesktopLayout ? desktop!(context) : mobile!(context);
      },
    );
  }

  /// Validates that either [mobile] or [desktop] is provided.
  void _checkIfMobileOrDesktopIsSupplied() {
    final hasMobileLayout = mobile != null;
    final hasDesktopLayout = desktop != null;
    assert(
    hasMobileLayout || hasDesktopLayout,
    'You should supply either a mobile layout or a desktop layout. If you don\'t need two layouts then remove this widget and use the widget you want to use directly.',
    );
  }

  static WidgetBuilder? _builderOrNull(Widget? widget) {
    return widget == null ? null : ((_) => widget);
  }
}