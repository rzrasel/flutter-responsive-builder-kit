// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:web/web.dart' as web;

import 'responsive_builder_kit_platform_interface.dart';

/// Web implementation of [ResponsiveBuilderKitPlatform].
///
/// Retrieves platform information from the browser.
class ResponsiveBuilderKitWeb extends ResponsiveBuilderKitPlatform {
  /// Creates a web implementation of ResponsiveBuilderKit.
  ResponsiveBuilderKitWeb();

  /// Registers the web implementation.
  static void registerWith(Registrar registrar) {
    ResponsiveBuilderKitPlatform.instance = ResponsiveBuilderKitWeb();
  }

  /// Returns the browser user agent as platform version.
  @override
  Future<String?> getPlatformVersion() async {
    return web.window.navigator.userAgent;
  }
}
