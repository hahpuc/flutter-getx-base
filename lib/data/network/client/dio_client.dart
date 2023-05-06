import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_getx_base/data/network/network_exception.dart';

class DioClient {
  // dio instance
  final Dio _dio;

  // injecting dio instance
  DioClient(this._dio);

  // Get:-----------------------------------------------------------------------
  Future<dynamic> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return response.data;
      } else {
        String message = response.data['message'];
        String errorCode = response.data['errorCode'];
        throw NetworkException(message,
            errorCode: errorCode, statusCode: response.statusCode);
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  // Post:----------------------------------------------------------------------
  Future<dynamic> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return response.data;
      } else {
        String message = response.data['message'];
        String errorCode = response.data['errorCode'];
        throw NetworkException(message,
            errorCode: errorCode, statusCode: response.statusCode);
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  // Put:-----------------------------------------------------------------------
  Future<dynamic> put(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return response.data;
      } else {
        String message = response.data['message'];
        String errorCode = response.data['errorCode'];
        throw NetworkException(message,
            errorCode: errorCode, statusCode: response.statusCode);
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  // Delete:--------------------------------------------------------------------
  Future<dynamic> delete(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return response.data;
      } else {
        String message = response.data['message'];
        String errorCode = response.data['errorCode'];
        throw NetworkException(message,
            errorCode: errorCode, statusCode: response.statusCode);
      }
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
