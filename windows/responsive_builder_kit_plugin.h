#ifndef FLUTTER_PLUGIN_RESPONSIVE_BUILDER_KIT_PLUGIN_H_
#define FLUTTER_PLUGIN_RESPONSIVE_BUILDER_KIT_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace responsive_builder_kit {

class ResponsiveBuilderKitPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ResponsiveBuilderKitPlugin();

  virtual ~ResponsiveBuilderKitPlugin();

  // Disallow copy and assign.
  ResponsiveBuilderKitPlugin(const ResponsiveBuilderKitPlugin&) = delete;
  ResponsiveBuilderKitPlugin& operator=(const ResponsiveBuilderKitPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace responsive_builder_kit

#endif  // FLUTTER_PLUGIN_RESPONSIVE_BUILDER_KIT_PLUGIN_H_
