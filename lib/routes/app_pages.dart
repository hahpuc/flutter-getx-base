import 'package:flutter_getx_base/presentation/pages/demo/demo_controller.dart';
import 'package:flutter_getx_base/presentation/pages/demo/demo_page.dart';
import 'package:flutter_getx_base/routes/routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.demo,
      page: () => const DemoPage(),
      binding:
          BindingsBuilder.put(() => DemoController(Get.find(), Get.find())),
    ),
  ];
}
