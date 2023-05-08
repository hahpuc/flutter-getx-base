import 'package:flutter_getx_base/core/controller/base_controller.dart';
import 'package:flutter_getx_base/data/local/pref/pref_helper.dart';
import 'package:flutter_getx_base/data/repository/app_repository.dart';
import 'package:flutter_getx_base/generated/l10n.dart';
import 'package:get/get.dart';

class DemoController extends BaseController {
  final AppRepository _appRepository;
  final PrefHelper _prefProvider;

  DemoController(this._appRepository, this._prefProvider);

  RxString resultApi = S.current.app_name.obs;

  Future<void> getMovies(int page) async {
    showLoading();
    final result = await _appRepository.getMoviePopular(page);
    hideLoading();

    // Handle result
    if (result.isSuccessful()) {
      resultApi.value = "GET DATA SUCCESS";
      return;
    }

    // Error
    resultApi.value = result.exception?.message ?? 'Unknown error';
  }
}
