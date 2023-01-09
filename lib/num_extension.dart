extension NumExtension on num {
  /// 判断数字是否在范围中，左闭右开
  bool inRange(num start, num end) {
    return this >= start && this < end;
  }
}
