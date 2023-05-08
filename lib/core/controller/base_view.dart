import 'package:flutter/material.dart';
import 'package:flutter_getx_base/core/controller/base_controller.dart';
import 'package:get/get.dart';

abstract class BaseView<T extends BaseController> extends GetView<T> {
  const BaseView({Key? key}) : super(key: key);
}
