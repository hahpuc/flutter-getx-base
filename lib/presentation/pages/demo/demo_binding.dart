import 'package:flutter_getx_base/data/local/pref/pref_helper.dart';
import 'package:flutter_getx_base/data/repository/app_repository.dart';
import 'package:flutter_getx_base/presentation/pages/demo/demo_controller.dart';
import 'package:get/get.dart';

class DemoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      DemoController(Get.find(tag: (AppRepository).toString()),
          Get.find(tag: (PrefHelper).toString())),
      tag: (DemoController).toString(),
    );
  }
}
