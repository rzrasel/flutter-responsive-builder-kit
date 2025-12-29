
class RefinedBreakpoints {
  //|-------------------DESKTOP SCREEN WIDTH-------------------|
  final double desktopExtraLarge;
  final double desktopLarge;
  final double desktopNormal;
  final double desktopSmall;
  //|-------------------TABLET SCREEN WIDTH--------------------|
  final double tabletExtraLarge;
  final double tabletLarge;
  final double tabletNormal;
  final double tabletSmall;
  //|-------------------MOBILE SCREEN WIDTH--------------------|
  final double mobileExtraLarge;
  final double mobileLarge;
  final double mobileNormal;
  final double mobileSmall;

  const RefinedBreakpoints({
    this.mobileSmall = 320,
    this.mobileNormal = 375,
    this.mobileLarge = 414,
    this.mobileExtraLarge = 480,
    this.tabletSmall = 600,
    this.tabletNormal = 768,
    this.tabletLarge = 850,
    this.tabletExtraLarge = 900,
    this.desktopSmall = 950,
    this.desktopNormal = 1920,
    this.desktopLarge = 3840,
    this.desktopExtraLarge = 4096,
  });

  @override
  String toString() {
    return "Desktop: Small - $desktopSmall Normal - $desktopNormal Large - $desktopLarge ExtraLarge - $desktopExtraLarge"
        + "\nTablet: Small - $tabletSmall Normal - $tabletNormal Large - $tabletLarge ExtraLarge - $tabletExtraLarge"
        + "\nMobile: Small - $mobileSmall Normal - $mobileNormal Large - $mobileLarge ExtraLarge - $mobileExtraLarge";
  }
}