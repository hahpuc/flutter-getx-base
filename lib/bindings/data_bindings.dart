import 'package:dio/dio.dart';
import 'package:flutter_getx_base/bindings/provide/network_provide.dart';
import 'package:flutter_getx_base/data/local/pref/pref_helper.dart';
import 'package:flutter_getx_base/data/network/client/dio_client.dart';
import 'package:flutter_getx_base/data/network/services/app_service.dart';
import 'package:flutter_getx_base/data/repository/app_repository.dart';
import 'package:get/get.dart';

class DataBindings implements Bindings {
  @override
  void dependencies() async {
    await _provideDioClients();
    await _provideServices();
    await _provideRepository();
  }

  Future _provideDioClients() async {
    Get.lazyPut<Dio>(
      () => NetworkProvide.provideDio(),
      tag: (Dio).toString(),
      fenix: true,
    );

    Get.lazyPut<DioClient>(
      () => DioClient(Get.find<Dio>()),
      tag: (DioClient).toString(),
      fenix: true,
    );
  }

  Future _provideServices() async {
    Get.lazyPut<AppService>(
      () => AppService(Get.find<DioClient>()),
      tag: (AppService).toString(),
      fenix: true,
    );
  }

  Future _provideRepository() async {
    Get.lazyPut<AppRepository>(
      () => AppRepository(Get.find<AppService>(), Get.find<PrefHelper>()),
      tag: (AppRepository).toString(),
      fenix: true,
    );
  }
}
