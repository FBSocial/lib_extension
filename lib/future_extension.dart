import 'package:lib_utils/loggers.dart';

extension FutureExtension<T> on Future<T> {
  Future<T> printError(String error) {
    return catchError((e) {
      logger.warning("$error. $e");
    });
  }

  void get unawaited {}
}
