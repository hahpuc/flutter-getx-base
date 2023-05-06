import 'package:flutter_getx_base/data/local/pref/pref_helper.dart';
import 'package:flutter_getx_base/data/model/response/movie_popular_response.dart';
import 'package:flutter_getx_base/data/network/api_result.dart';
import 'package:flutter_getx_base/data/network/network_exception.dart';
import 'package:flutter_getx_base/data/network/services/app_service.dart';

class AppRepository {
  final AppService _appService;
  final PrefHelper _prefHelper;

  AppRepository(this._appService, this._prefHelper);

  Future<ApiResult<GetMoviePopularResponse, NetworkException>> getMoviePopular(
      int page) async {
    return await _appService.getMoviePopular(page);
  }
}
