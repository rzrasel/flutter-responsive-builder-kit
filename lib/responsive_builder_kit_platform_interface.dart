import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'responsive_builder_kit_method_channel.dart';

/// Platform interface for the responsive_builder_kit plugin.
///
/// Implement this for platform-specific responsive utilities (e.g., web/desktop detection).
abstract class ResponsiveBuilderKitPlatform extends PlatformInterface {
  /// Constructs a [ResponsiveBuilderKitPlatform].
  ///
  /// Required for platform interface verification using [_token].
  /// Subclasses should call this in their constructors.
  ResponsiveBuilderKitPlatform() : super(token: _token);

  static final Object _token = Object();
  static ResponsiveBuilderKitPlatform _instance = MethodChannelResponsiveBuilderKit();

  /// The default instance, using method channels.
  static ResponsiveBuilderKitPlatform get instance => _instance;

  /// Set a custom platform instance (e.g., for testing).
  static set instance(ResponsiveBuilderKitPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Retrieves the platform version (e.g., user agent on web).
  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}