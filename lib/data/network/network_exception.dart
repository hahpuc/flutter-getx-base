import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_getx_base/core/utils/network_utils.dart';

class NetworkException implements Exception {
  String message;
  String? errorCode;
  int? statusCode;

  NetworkException(this.message, {this.errorCode, this.statusCode});

  @override
  String toString() {
    return message;
  }

  static NetworkException handleResponse(int statusCode) {
    switch (statusCode) {
      case 400:
        return NetworkException("Bad Request");
      case 401:
        return NetworkException("Unauthorized");
      case 403:
        return NetworkException("Forbidden");
      case 404:
        return NetworkException("Not Found");
      case 409:
        return NetworkException("Error due to a conflict");
      case 408:
        return NetworkException("Request Timeout");
      case 500:
        return NetworkException("Internal Server Error");
      case 502:
        return NetworkException("Bad Gateway");
      case 503:
        return NetworkException("Service Unavailable");
      default:
        return NetworkException("Received invalid status code: $statusCode");
    }
  }

  static Future<NetworkException> getNetworkException(error) async {
    var isNetworkAvailable = await NetworkUtils.isNetworkAvailable();
    if (!isNetworkAvailable) {
      return NetworkException("không có kết nối Internet");
    }
    if (error is NetworkException) return error;
    if (error is Exception) {
      try {
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.connectionTimeout:
              return NetworkException("Connection request timeout");
            case DioErrorType.sendTimeout:
              return NetworkException(
                  "Send timeout in connection with API server");
            case DioErrorType.receiveTimeout:
              return NetworkException(
                  "Receive timeout in connection with API server");
            case DioErrorType.badCertificate:
              return NetworkException("Unable to verify SSL certificate");
            case DioErrorType.badResponse:
              if (error.error.toString().contains("XMLHttpRequest")) {
                return NetworkException("Connection Failed");
              } else {
                return NetworkException.handleResponse(
                    error.response!.statusCode!);
              }
            case DioErrorType.cancel:
              return NetworkException("Request Cancelled");
            case DioErrorType.connectionError:
              return NetworkException("Connection Error");
            case DioErrorType.unknown:
              return NetworkException("Unknown Error");
          }
        } else if (error is SocketException) {
          return NetworkException("SocketException");
        } else {
          return NetworkException("Unexpected error occurred");
        }
      } on FormatException catch (e) {
        debugPrint(e.toString());
        return NetworkException("Format Exception");
      } catch (_) {
        return NetworkException("Unexpected error occurred");
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return NetworkException("Unable to process the data");
      } else {
        return NetworkException("Unexpected error occurred");
      }
    }
  }
}
