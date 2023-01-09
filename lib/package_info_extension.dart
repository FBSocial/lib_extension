import 'package:package_info_plus/package_info_plus.dart';

extension PackageInfoExtension on PackageInfo {
  /// 获取完整的版本号，包括buildNumber
  /// separate: buildNumber分割符，默认 +
  String getCompleteVersion({String separate = '+'}) =>
      '$version$separate$buildNumber';
}
