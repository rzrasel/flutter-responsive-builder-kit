import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'responsive_builder_kit_method_channel.dart';

abstract class ResponsiveBuilderKitPlatform extends PlatformInterface {
  /// Constructs a ResponsiveBuilderKitPlatform.
  ResponsiveBuilderKitPlatform() : super(token: _token);

  static final Object _token = Object();

  static ResponsiveBuilderKitPlatform _instance = MethodChannelResponsiveBuilderKit();

  /// The default instance of [ResponsiveBuilderKitPlatform] to use.
  ///
  /// Defaults to [MethodChannelResponsiveBuilderKit].
  static ResponsiveBuilderKitPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ResponsiveBuilderKitPlatform] when
  /// they register themselves.
  static set instance(ResponsiveBuilderKitPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
