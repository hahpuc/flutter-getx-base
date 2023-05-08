import 'package:flutter_getx_base/bindings/provide/local_provide.dart';
import 'package:flutter_getx_base/data/local/pref/pref_helper.dart';
import 'package:get/get.dart';

class LocalSourceBindings implements Bindings {
  @override
  void dependencies() async {
    final prefs = await LocalProvide.provideSharedPreferences();

    Get.put<PrefHelper>(
      PrefHelper(prefs),
      permanent: true,
    );
  }
}
