/// Fine-grained breakpoints for [RefinedSize] within each [DeviceScreenType].
///
/// Customize and pass to [getRefinedSize] for precise control. Defaults provided for mobile/tablet/desktop variants.
class RefinedBreakpoints {
  // Desktop variants
  /// Minimum width for extra-large desktop screens (default: 4096px).
  final double desktopExtraLarge;
  /// Minimum width for large desktop screens (default: 3840px).
  final double desktopLarge;
  /// Minimum width for normal desktop screens (default: 1920px).
  final double desktopNormal;
  /// Minimum width for small desktop screens (default: 950px).
  final double desktopSmall;

  // Tablet variants
  /// Minimum width for extra-large tablet screens (default: 900px).
  final double tabletExtraLarge;
  /// Minimum width for large tablet screens (default: 850px).
  final double tabletLarge;
  /// Minimum width for normal tablet screens (default: 768px).
  final double tabletNormal;
  /// Minimum width for small tablet screens (default: 600px).
  final double tabletSmall;

  // Mobile variants
  /// Minimum width for extra-large mobile screens (default: 480px).
  final double mobileExtraLarge;
  /// Minimum width for large mobile screens (default: 414px).
  final double mobileLarge;
  /// Minimum width for normal mobile screens (default: 375px).
  final double mobileNormal;
  /// Minimum width for small mobile screens (default: 320px).
  final double mobileSmall;

  /// Creates a [RefinedBreakpoints] instance with customizable thresholds.
  ///
  /// All parameters are optional and default to standard responsive values.
  const RefinedBreakpoints({
    this.desktopExtraLarge = 4096,
    this.desktopLarge = 3840,
    this.desktopNormal = 1920,
    this.desktopSmall = 950,
    this.tabletExtraLarge = 900,
    this.tabletLarge = 850,
    this.tabletNormal = 768,
    this.tabletSmall = 600,
    this.mobileExtraLarge = 480,
    this.mobileLarge = 414,
    this.mobileNormal = 375,
    this.mobileSmall = 320,
  });

  @override
  String toString() {
    return """
      Desktop: Small - $desktopSmall Normal - $desktopNormal Large - $desktopLarge ExtraLarge - $desktopExtraLarge
      Tablet: Small - $tabletSmall Normal - $tabletNormal Large - $tabletLarge ExtraLarge - $tabletExtraLarge
      Mobile: Small - $mobileSmall Normal - $mobileNormal Large - $mobileLarge ExtraLarge - $mobileExtraLarge
      """;
  }
}