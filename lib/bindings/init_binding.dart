import 'package:flutter_getx_base/bindings/data_bindings.dart';
import 'package:flutter_getx_base/bindings/local_source_bindings.dart';
import 'package:get/get.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    DataBindings().dependencies();
    LocalSourceBindings().dependencies();
  }
}
