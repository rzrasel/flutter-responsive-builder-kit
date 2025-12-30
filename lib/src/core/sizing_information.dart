import 'package:flutter/material.dart';
import '../type/device_screen_type.dart';
import '../type/refined_size.dart';

/// Holds sizing and device information for responsive building.
///
/// Obtained from [ResponsiveBuilder]'s callback. Use properties like [isMobile] for conditional logic.
class SizingInformation {
  /// The detected device screen type (e.g., [DeviceScreenType.mobile]).
  final DeviceScreenType deviceScreenType;
  /// Refined size within the device type (e.g., [RefinedSize.large]).
  final RefinedSize refinedSize;
  /// Full screen dimensions from [MediaQuery].
  final Size screenSize;
  /// Local widget constraints from [LayoutBuilder].
  final Size localWidgetSize;

  /// True if the device is mobile-sized.
  bool get isMobile => deviceScreenType == DeviceScreenType.mobile;

  /// True if the device is tablet-sized.
  bool get isTablet => deviceScreenType == DeviceScreenType.tablet;

  /// True if the device is desktop-sized.
  bool get isDesktop => deviceScreenType == DeviceScreenType.desktop;

  /// True if the device is watch-sized.
  bool get isWatch => deviceScreenType == DeviceScreenType.watch;

  // Refined getters
  /// True if the refined size is extra-large.
  bool get isExtraLarge => refinedSize == RefinedSize.extraLarge;

  /// True if the refined size is large.
  bool get isLarge => refinedSize == RefinedSize.large;

  /// True if the refined size is normal.
  bool get isNormal => refinedSize == RefinedSize.normal;

  /// True if the refined size is small.
  bool get isSmall => refinedSize == RefinedSize.small;

  /// Constructs a [SizingInformation] instance with required sizing details.
  ///
  /// Typically created internally by [ResponsiveBuilder]; use the getters for responsive logic.
  SizingInformation({
    required this.deviceScreenType,
    required this.refinedSize,
    required this.screenSize,
    required this.localWidgetSize,
  });

  @override
  String toString() {
    return 'DeviceType:$deviceScreenType RefinedSize:$refinedSize ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }
}