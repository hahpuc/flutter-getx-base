import 'package:flutter_getx_base/bindings/provide/local_provide.dart';
import 'package:flutter_getx_base/data/local/pref/pref_helper.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalSourceBindings implements Bindings {
  @override
  void dependencies() async {
    await _providePrefProvider();
  }

  Future _providePrefProvider() async {
    await Get.putAsync<SharedPreferences>(
      () => LocalProvide.provideSharedPreferences(),
      tag: (SharedPreferences).toString(),
    );

    Get.lazyPut<PrefHelper>(
      () => PrefHelper(Get.find<SharedPreferences>()),
      tag: (PrefHelper).toString(),
      fenix: true,
    );
  }
}
