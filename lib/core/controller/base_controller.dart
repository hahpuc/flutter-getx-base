import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class BaseController extends GetxController {
  void showLoading([String? message]) {
    EasyLoading.show(
        status: message,
        maskType: EasyLoadingMaskType.black,
        dismissOnTap: false);
  }

  void hideLoading() {
    EasyLoading.dismiss();
  }
}
