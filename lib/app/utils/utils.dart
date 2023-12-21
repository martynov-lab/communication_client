// part of app_helpers;

import 'dart:convert';

class Utils {
  static String stringify(dynamic) {
    JsonEncoder encoder = const JsonEncoder();
    return encoder.convert(dynamic);
  }

  static void printRed(String text) {
    print('\x1B[31m$text\x1B[0m');
  }

  static void printGreen(String text) {
    print('\x1B[32m$text\x1B[0m');
  }

  static void printYellow(String text) {
    print('\x1B[33m$text\x1B[0m');
  }

  static void printWhite(String text) {
    print('\x1B[37m$text\x1B[0m');
  }

// Black:   \x1B[30m
// Red:     \x1B[31m
// Green:   \x1B[32m
// Yellow:  \x1B[33m
// Blue:    \x1B[34m
// Magenta: \x1B[35m
// Cyan:    \x1B[36m
// White:   \x1B[37m
// Reset:   \x1B[0m
}
