import 'package:flutter/material.dart';
import '../type/orientation_layout_type.dart';

/// Builds widgets based on device orientation.
///
/// Allows defining different layouts for portrait and landscape
/// modes with optional forced layout behavior.
class OrientationLayoutBuilder extends StatelessWidget {
  /// Builder for landscape orientation.
  final WidgetBuilder? landscape;

  /// Builder for portrait orientation.
  final WidgetBuilder portrait;

  /// Controls how orientation selection behaves.
  final OrientationLayoutType mode;

  /// Creates an [OrientationLayoutBuilder].
  const OrientationLayoutBuilder({
    super.key,
    this.landscape,
    required this.portrait,
    this.mode = OrientationLayoutType.auto,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        var orientation = MediaQuery.of(context).orientation;
        if (mode != OrientationLayoutType.portrait &&
            (orientation == Orientation.landscape ||
                mode == OrientationLayoutType.landscape)) {
          if (landscape != null) {
            return landscape!(context);
          }
        }

        return portrait(context);
      },
    );
  }
}