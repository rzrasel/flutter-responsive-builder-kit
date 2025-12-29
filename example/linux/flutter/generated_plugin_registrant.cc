//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <responsive_builder_kit/responsive_builder_kit_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) responsive_builder_kit_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ResponsiveBuilderKitPlugin");
  responsive_builder_kit_plugin_register_with_registrar(responsive_builder_kit_registrar);
}
