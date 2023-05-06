import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_getx_base/data/network/constants/network_constants.dart';
import 'package:flutter_getx_base/data/network/interceptors/log_interceptor.dart';
import 'package:flutter_getx_base/env_config.dart';

abstract class NetworkProvide {
  /// A singleton dio provider.
  ///
  /// Calling it multiple times will return the same instance.
  static Dio provideDio() {
    final dio = Dio();

    dio
      ..options.baseUrl = EnvConfig.instance.baseUrl
      ..options.connectTimeout =
          const Duration(milliseconds: NetworkConstants.connectionTimeout)
      ..options.receiveTimeout =
          const Duration(milliseconds: NetworkConstants.receiveTimeout)
      ..options.sendTimeout =
          const Duration(milliseconds: NetworkConstants.sendTimeout)
      ..options.validateStatus = ((status) => true)
      ..options.headers = {"content-type": "application/x-www-form-urlencoded"};
    //   ..interceptors.add(AuthInterceptor(prefHelper))

    if (kDebugMode) {
      dio.interceptors.add(AppLogInterceptor());
    }

    // dio.interceptors.add(RefreshTokenInterceptor(prefHelper, dio));
    return dio;
  }
}
