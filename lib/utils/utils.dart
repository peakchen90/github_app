import 'dart:ui';
import 'package:flutter/widgets.dart';

class Adapt {
  static final MediaQueryData mediaQuery = MediaQueryData.fromWindow(window);
  static final double width = mediaQuery.size.width;
  static final double height = mediaQuery.size.height;
  static double radio;

  static init(num designWidth) {
    radio = width / designWidth;
  }

  static px(num number) {
    if (radio == null) {
      init(750);
    }
    return number * radio;
  }
}
