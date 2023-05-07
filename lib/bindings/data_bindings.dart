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
    final dio = NetworkProvide.provideDio();

    Get.put<DioClient>(
      DioClient(dio),
      tag: (DioClient).toString(),
      permanent: true,
    );
  }

  Future _provideServices() async {
    Get.put<AppService>(
      AppService(Get.find(tag: (DioClient).toString())),
      permanent: true,
    );
  }

  Future _provideRepository() async {
    Get.put(
      () => AppRepository(Get.find(tag: (AppService).toString()),
          Get.find(tag: (PrefHelper).toString())),
      tag: (AppRepository).toString(),
      permanent: true,
    );
  }
}
