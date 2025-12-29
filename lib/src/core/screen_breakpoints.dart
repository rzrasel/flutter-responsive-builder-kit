
class ScreenBreakpoints {
  final double desktop;
  final double tablet;
  final double mobile;
  final double watch;

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