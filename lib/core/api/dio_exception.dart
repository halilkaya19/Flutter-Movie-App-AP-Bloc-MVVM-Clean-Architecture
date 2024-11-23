import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioExceptionController implements Exception{

  String errorMessage = "";

  DioExceptionController.showDioError(DioException e){
    if(kDebugMode){
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          errorMessage = 'Gönderme veya alma sırasında zaman aşımı oluştu';
          break;
        case DioExceptionType.badResponse:
          final statusCode = e.response?.statusCode;
          if (statusCode != null) {
            errorMessage = _handleStatusCode(statusCode);
          }
          break;
        case DioExceptionType.cancel:
          errorMessage = 'Cancel';
          break;
        case DioExceptionType.unknown:
          errorMessage = 'Timeout occurred while sending or receiving';
          break;
        case DioExceptionType.badCertificate:
          errorMessage = 'Timeout occurred while sending or receiving';
          break;
        case DioExceptionType.connectionError:
          errorMessage = 'Cancel 9';
          break;
        default:
          errorMessage = 'Cancel 10';
      }
    }
  }

  String _handleStatusCode(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'Bad request. 1';
      case 401:
        return 'Authentication failed. 2';
      case 403:
        return 'The authenticated user is not allowed to access the specified API endpoint. 3';
      case 404:
        return '404 | The requested resource does not exist. 3';
      case 405:
        return 'Method not allowed. Please check the Allow header for the allowed HTTP methods. 4';
      case 415:
        return 'Unsupported media type. The requested content type or version number is invalid. 5';
      case 422:
        return 'Data validation failed. 6';
      case 429:
        return 'Too many requests. 7';
      case 500:
        return 'Internal server error. 8';
      default:
        return 'Oops something went wrong! 9';
    }
  }

  @override
  String toString() => errorMessage;
}
