
import 'responsive_builder_kit_platform_interface.dart';

class ResponsiveBuilderKitV1 {
  Future<String?> getPlatformVersion() {
    return ResponsiveBuilderKitPlatform.instance.getPlatformVersion();
  }
}