import 'package:flutter/material.dart';
import 'package:flutter_getx_base/core/mixins/after_layout.dart';
import 'package:flutter_getx_base/routes/routes.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with AfterLayoutMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: const Center(
        child: Text("Splash Page"),
      ),
    );
  }

  @override
  void afterFirstFrame(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 1));

    Get.offNamed(AppRoutes.demo);
  }
}
