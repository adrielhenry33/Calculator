import 'package:flutter/foundation.dart'; // necessário para debugPrint
class Logger {
  static void info(String message) {
    final timestamp = DateTime.now().toIso8601String();
    debugPrint('[INFO] [$timestamp] $message');
  }

  static void warning(String message) {
    final timestamp = DateTime.now().toIso8601String();
    debugPrint('[WARNING] [$timestamp] $message');
  }

  static void error(String message) {
    final timestamp = DateTime.now().toIso8601String();
    debugPrint('[ERROR] [$timestamp] $message');
  }
}
