import 'package:flutter/material.dart';
import 'package:lib_utils/config/config.dart';

/// 根据设计稿转换成逻辑像素
extension DesignLogicalPixels on num {
  /// 设计稿高度
  static const _designHeight = 812;

  /// 屏幕去除底部home bar区域的高度
  static double _height() {
    final screenH =
        MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.height;
    final bottomPadding =
        MediaQuery.of(Config.navigatorKey.currentContext!).padding.bottom;
    return screenH - bottomPadding;
  }

  static final double _ratio = _height() / _designHeight;

  /// 将设计图中的像素转换为实际的逻辑像素
  double get px => this * _ratio;
}
