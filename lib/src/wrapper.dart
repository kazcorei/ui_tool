import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:ui_tool/src/ui.dart';

///Wrap your first Screen with UIWrapper
/// * [child] - The first screen HomePage / SplashScreen.
class UIWrapper extends StatelessWidget {
  final Widget child;

  const UIWrapper({required this.child});
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      UI.isWeb = true;
    } else {
      UI.isWeb = false;
    }
    UI.initialize(context);

    return child;
  }
}
