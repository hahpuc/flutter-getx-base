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
    final prefs = await LocalProvide.provideSharedPreferences();

    Get.put(
      PrefHelper(prefs),
      tag: (PrefHelper).toString(),
      permanent: true,
    );
  }
}
