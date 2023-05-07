import 'package:flutter/material.dart';
import 'package:flutter_getx_base/data/network/services/app_service.dart';
import 'package:flutter_getx_base/data/repository/app_repository.dart';
import 'package:flutter_getx_base/presentation/pages/demo/demo_controller.dart';
import 'package:get/get.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
          child: ElevatedButton(
        onPressed: () {
          Get.find<AppService>().getMoviePopular(1);
        },
        child: const Text("Login"),
      )),
    );
  }
}
