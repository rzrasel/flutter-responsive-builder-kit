import 'package:flutter/material.dart';
import '../core/refined_breakpoints.dart';
import '../core/screen_breakpoints.dart';
import '../core/sizing_information.dart';
import '../helpers/device_screen_helper.dart';
import '../helpers/refined_size_helper.dart';

/// A [LayoutBuilder] wrapper that provides [SizingInformation] for responsive UIs.
///
/// Use the [builder] callback to receive sizing data and render adaptive widgets.
/// Example:
/// ```dart
/// ResponsiveBuilder(
///   builder: (context, sizing) => sizing.isMobile ? MobileLayout() : DesktopLayout(),
/// )
/// ```
class ResponsiveBuilder extends StatelessWidget {
  /// Callback receiving context and [SizingInformation].
  final Widget Function(BuildContext context, SizingInformation sizingInformation) builder;

  /// Optional custom [ScreenBreakpoints] to override defaults.
  final ScreenBreakpoints? breakpoints;

  /// Optional custom [RefinedBreakpoints] for granular sizing.
  final RefinedBreakpoints? refinedBreakpoints;

  /// Creates a [ResponsiveBuilder] with required [builder] and optional breakpoints.
  ///
  /// The [builder] receives [SizingInformation] for adaptive rendering.
  /// Use [breakpoints] to customize device thresholds and [refinedBreakpoints] for granular sizing.
  const ResponsiveBuilder({
    super.key,
    required this.builder,
    this.breakpoints,
    this.refinedBreakpoints,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, boxConstraints) {
      var mediaQuery = MediaQuery.of(context);
      var sizingInformation = SizingInformation(
        deviceScreenType: getDeviceType(mediaQuery.size, breakpoints),
        refinedSize: getRefinedSize(
          mediaQuery.size,
          refinedBreakpoint: refinedBreakpoints,
        ),
        screenSize: mediaQuery.size,
        localWidgetSize: Size(boxConstraints.maxWidth, boxConstraints.maxHeight),
      );
      return builder(context, sizingInformation);
    });
  }
}