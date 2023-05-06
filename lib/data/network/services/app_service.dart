import 'package:flutter_getx_base/data/model/response/movie_popular_response.dart';
import 'package:flutter_getx_base/data/network/client/dio_client.dart';
import 'package:flutter_getx_base/data/network/constants/end_point.dart';

import '../api_result.dart';
import '../network_exception.dart';

class AppService {
  final DioClient _dioClient;

  AppService(this._dioClient);

  Future<ApiResult<GetMoviePopularResponse, NetworkException>> getMoviePopular(
      int page) async {
    try {
      final res = await _dioClient.get(
        "${EndPoints.popular}?api_key=${EndPoints.apiKey}&page=$page",
      );
      return ApiResult(response: GetMoviePopularResponse.fromJson(res));
    } catch (e) {
      return ApiResult(
          exception: await NetworkException.getNetworkException(e));
    }
  }
}
