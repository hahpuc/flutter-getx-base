import 'package:flutter_getx_base/core/controller/base_controller.dart';
import 'package:flutter_getx_base/data/local/pref/pref_helper.dart';
import 'package:flutter_getx_base/data/repository/app_repository.dart';

class DemoController extends BaseController {
  final AppRepository _appRepository;
  final PrefHelper _prefProvider;

  DemoController(this._appRepository, this._prefProvider);

  Future<void> getMovies(int page) async {
    showLoading();
    final result = await _appRepository.getMoviePopular(page);
    hideLoading();

    // Handle result
  }
}
