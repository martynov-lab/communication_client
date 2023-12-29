import 'package:communication_client/app/utils/utils.dart';

abstract final class AppError {
  AppError._();

  static void logError(Object exception,
      {StackTrace? stackTrace, String? hint}) {
    try {
      if (exception is String) {
        return logMessage(exception,
            stackTrace: stackTrace, hint: hint, warning: true);
      }
    } on Object catch (error, stackTrace) {
      Utils.printRed('Error: $error; StackTrace: $stackTrace');
    }
  }

  static void logMessage(
    String message, {
    StackTrace? stackTrace,
    String? hint,
    bool warning = false,
    List<String>? params,
  }) {
    try {
      Utils.printRed('Message: $message; StackTrace: $stackTrace');
    } on Object catch (error, stackTrace) {
      Utils.printRed('Error: $error; StackTrace: $stackTrace');
    }
  }
}
