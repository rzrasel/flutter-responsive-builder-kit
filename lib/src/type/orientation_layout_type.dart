/// Controls how [OrientationLayoutBuilder] selects layouts based on device orientation.
///
/// Defaults to [auto] for automatic detection.
enum OrientationLayoutType {
  /// Automatically detect and use landscape or portrait based on device orientation.
  auto,
  /// Force landscape layout regardless of orientation.
  landscape,
  /// Force portrait layout regardless of orientation.
  portrait,
}