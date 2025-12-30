/// Granular size variants within a [DeviceScreenType] for fine-tuned responsive adjustments.
///
/// Use with [getRefinedSize] to handle subtle width differences (e.g., small vs. large mobile).
enum RefinedSize {
  /// The largest variant (e.g., 4K for desktops).
  extraLarge,
  /// Larger variant.
  large,
  /// Standard/normal variant.
  normal,
  /// The smallest variant in its device category.
  small,
}