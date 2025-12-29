import 'package:flutter_test/flutter_test.dart';
import 'package:responsive_builder_kit/responsive_builder_kit.dart';
import 'package:responsive_builder_kit/responsive_builder_kit_platform_interface.dart';
import 'package:responsive_builder_kit/responsive_builder_kit_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockResponsiveBuilderKitPlatform
    with MockPlatformInterfaceMixin
    implements ResponsiveBuilderKitPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ResponsiveBuilderKitPlatform initialPlatform = ResponsiveBuilderKitPlatform.instance;

  test('$MethodChannelResponsiveBuilderKit is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelResponsiveBuilderKit>());
  });

  test('getPlatformVersion', () async {
    //ResponsiveBuilderKit responsiveBuilderKitPlugin = ResponsiveBuilderKit();
    MockResponsiveBuilderKitPlatform fakePlatform = MockResponsiveBuilderKitPlatform();
    ResponsiveBuilderKitPlatform.instance = fakePlatform;

    //expect(await responsiveBuilderKitPlugin.getPlatformVersion(), '42');
  });
}
