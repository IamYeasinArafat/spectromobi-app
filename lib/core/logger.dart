import 'package:logger/logger.dart';

class AppLogger {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 3,
      lineLength: 80,
      colors: true,
      printEmojis: true,
      dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
    ),
    level: Level.debug,
  );

  static bool _isInitialized = false;

  static void initialize() {
    _isInitialized = true;
  }

  static void debug(String message) {
    if (_isInitialized) _logger.d(message);
  }

  static void info(String message) {
    if (_isInitialized) _logger.i(message);
  }

  static void warning(String message) {
    if (_isInitialized) _logger.w(message);
  }

  static void error(dynamic message, [dynamic error]) {
    if (_isInitialized) {
      _logger.e(message, error: error, stackTrace: StackTrace.current);
    }
  }
}