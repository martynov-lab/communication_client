import 'package:dio/dio.dart';

class ErrorEntity {
  final String message;
  final String? errorMessage;
  final dynamic error;
  final StackTrace? stackTrace;

  ErrorEntity({
    required this.message,
    this.errorMessage,
    this.error,
    this.stackTrace,
  });

  factory ErrorEntity.fromException(dynamic error) {
    if (error is ErrorEntity) return error;
    final errorEntity = ErrorEntity(message: "Unknown error");
    if (error is DioError) {
      try {
        return ErrorEntity(
          message: error.response?.data["message"] ?? "Unknown error",
          errorMessage: error.response?.data["error"] ?? "Unknown error",
          error: error,
          stackTrace: error.stackTrace,
        );
      } catch (_) {
        return errorEntity;
      }
    }
    return errorEntity;
  }
}
