import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'responsive_builder_kit_platform_interface.dart';

/// Method channel implementation of [ResponsiveBuilderKitPlatform].
class MethodChannelResponsiveBuilderKit extends ResponsiveBuilderKitPlatform {
  /// The method channel for native communication.
  @visibleForTesting
  final methodChannel = const MethodChannel('responsive_builder_kit');

  @override
  Future<String?> getPlatformVersion() async {
    /// Fetches the native platform version via method channel.
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
