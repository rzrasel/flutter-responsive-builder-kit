#include "include/responsive_builder_kit/responsive_builder_kit_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "responsive_builder_kit_plugin.h"

void ResponsiveBuilderKitPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  responsive_builder_kit::ResponsiveBuilderKitPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
