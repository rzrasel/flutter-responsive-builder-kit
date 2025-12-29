import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'responsive_builder_kit_platform_interface.dart';

/// An implementation of [ResponsiveBuilderKitPlatform] that uses method channels.
class MethodChannelResponsiveBuilderKit extends ResponsiveBuilderKitPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('responsive_builder_kit');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
