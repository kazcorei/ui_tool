import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// The base class which keep all the necessary configs
class UI {
  /// Width
  static double width = 0;

  /// Height
  static double height = 0;

  /// Height in pixels
  static double hpx = 0;

  /// Width in pixels
  static double wpx = 0;

  /// Calculated ratio
  static double ratio = 1;

  /// Is the device in landscape orientation
  static bool isLandscape = false;

  /// is a WEB or PC or Mac
  static bool isWeb = false;

  /// device UI value
  static double deviceUIvalue = 0;

  /// Loads the text theme
  static TextTheme textTheme = const TextTheme();

  /// This will initialize the UI and calculate the ration on each screan load.
  static void initialize(context,
      {required int viewportWidth, required int viewportHeight}) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    hpx = height * MediaQuery.of(context).devicePixelRatio;
    wpx = width * MediaQuery.of(context).devicePixelRatio;
    isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;
    isWeb = kIsWeb;

    textTheme = Theme.of(context).textTheme;

    if (isWeb) {
      ratio = 1;
    } else {
      double designValue =
          pow((pow(viewportWidth, 2) + pow(viewportHeight, 2)), 0.5).toDouble();
      deviceUIvalue = pow((pow(width, 2) + pow(height, 2)), 0.5).toDouble();
      ratio = deviceUIvalue / designValue;
    }

    if (kDebugMode) {
      debugPrint('''
Width (viewport)  = $width
Height (viewport) = $height
Width(in pixels)  = $wpx
Height(in pixels) = $hpx
UI Value          = $deviceUIvalue
Ratio             = $ratio
        ''');
    }
  }
}

extension SizerExt on num {
  /// Calculates the sp (Scalable Pixel) depending on the device's screen size (ratio)
  double get r => this * UI.ratio;
}
