import 'package:dio/dio.dart';

class AppLogInterceptor extends LogInterceptor {
  AppLogInterceptor()
      : super(
          request: true,
          responseBody: true,
          requestBody: true,
          requestHeader: true,
        );
}
