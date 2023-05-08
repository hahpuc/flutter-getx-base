import 'package:flutter_getx_base/data/model/response/movie_popular_response.dart';
import 'package:flutter_getx_base/data/network/api_result.dart';
import 'package:flutter_getx_base/data/network/network_exception.dart';
import 'package:flutter_getx_base/data/network/services/app_service.dart';

class AppRepository {
  final AppService _appService;

  AppRepository(this._appService);

  Future<ApiResult<GetMoviePopularResponse, NetworkException>> getMoviePopular(
      int page) async {
    return await _appService.getMoviePopular(page);
  }
}
