/// Defines the screen types for responsive layouts, categorizing devices from watches to extra-large desktops.
///
/// Use this enum with [ResponsiveBuilder] or [getDeviceType] to conditionally render UI based on screen size.
enum DeviceScreenType {
  //|-----------------------DESKTOP TYPE-----------------------|
  /// Standard desktop screen (e.g., laptops and larger monitors).
  desktop,
  /// Extra-large desktop screen (e.g., 4K+ displays).
  desktopExtraLarge,
  /// Large desktop screen (e.g., wide monitors up to 3840px).
  desktopLarge,
  /// Normal desktop screen (e.g., full HD up to 1920px).
  desktopNormal,
  /// Small desktop screen (e.g., compact laptops from 950px).
  desktopSmall,
  //|-----------------------TABLET TYPE------------------------|
  /// Standard tablet screen.
  tablet,
  /// Extra-large tablet screen (up to 900px).
  tabletExtraLarge,
  /// Large tablet screen (up to 850px).
  tabletLarge,
  /// Normal tablet screen (up to 768px).
  tabletNormal,
  /// Small tablet screen (from 600px).
  tabletSmall,
  //|-----------------------MOBILE TYPE------------------------|
  /// Standard mobile phone screen.
  mobile,
  /// Extra-large mobile screen (up to 480px).
  mobileExtraLarge,
  /// Large mobile screen (up to 414px, e.g., iPhone Plus).
  mobileLarge,
  /// Normal mobile screen (up to 375px, e.g., iPhone SE).
  mobileNormal,
  /// Small mobile screen (from 320px).
  mobileSmall,
  //|------------------------WATCH TYPE------------------------|
  /// Wearable device screen (under 300px).
  watch,
}