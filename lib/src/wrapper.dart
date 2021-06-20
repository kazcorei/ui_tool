import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:ui_tool/src/ui.dart';

///Wrap your first Screen with UIWrapper
/// * [child] - The first screen HomePage / SplashScreen.
/// * [width] - The width of the design
/// * [height] - The height of the design
class UIWrapper extends StatelessWidget {
  final Widget child;
  final double width;
  final double height;
  final bool isViewPort;

  const UIWrapper({
    required this.child,
    required this.width,
    required this.height,
    this.isViewPort = false,
  });
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      UI.isWeb = true;
    } else {
      UI.isWeb = false;
    }

    UI.initialize(
      context,
      width,
      height,
      isViewPort,
    );

    return child;
  }
}
