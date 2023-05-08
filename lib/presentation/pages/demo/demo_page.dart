import 'package:flutter/material.dart';
import 'package:flutter_getx_base/core/controller/base_view.dart';
import 'package:flutter_getx_base/data/network/services/app_service.dart';
import 'package:flutter_getx_base/presentation/pages/demo/demo_controller.dart';
import 'package:get/get.dart';

class DemoPage extends BaseView<DemoController> {
  const DemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                controller.getMovies(1);
              },
              child: const Text("GET MOVIES"),
            ),
            const SizedBox(height: 16.0),
            Obx(() => Text(controller.resultApi.value))
          ],
        ),
      ),
    );
  }
}
