/// Customizable breakpoints for defining device categories.
///
/// Pass to [ResponsiveBuilder] or [getDeviceType] to override defaults.
/// Defaults: watch=300, mobile=600, tablet=600, desktop=950.
class ScreenBreakpoints {
  /// Minimum width for desktop layouts.
  final double desktop;
  /// Minimum width for tablet layouts.
  final double tablet;
  /// Minimum width for mobile layouts (above watch).
  final double mobile;
  /// Maximum width for watch layouts.
  final double watch;

  /// Creates a [ScreenBreakpoints] instance with custom thresholds.
  ///
  /// All parameters are required; use defaults via [ResponsiveSizingConfig] if standard values suffice.
  const ScreenBreakpoints({
    required this.desktop,
    required this.tablet,
    required this.mobile,
    required this.watch,
  });

  @override
  String toString() {
    return "Watch: $watch, Mobile: $mobile, Tablet: $tablet, Desktop: $desktop";
  }
}