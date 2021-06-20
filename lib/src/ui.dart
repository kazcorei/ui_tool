import 'dart:math';

import 'package:flutter/material.dart';

class UI {
  ///Get the DarkMode
  static bool isDarkMode = false;
  static bool isLandscape = false;
  static bool isWeb = false;
  static double width = 0;
  static double height = 0;
  static double hpx = 0;
  static double wpx = 0;
  static double ratio = 1;

  static void initialize(BuildContext context) {
    isDarkMode = false;
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    hpx = height * MediaQuery.of(context).devicePixelRatio;
    wpx = width * MediaQuery.of(context).devicePixelRatio;
    isLandscape = height < width;

    if (!isWeb) {
      num deviceValue = pow((pow(width, 2) + pow(height, 2)), 0.5);

      ratio = deviceValue / 1020.1274430187632;
    } else
      ratio = 1;

    print("W=$width , H=$height \nWPX=$wpx , HPX=$hpx \nRatio = $ratio");
  }
}
