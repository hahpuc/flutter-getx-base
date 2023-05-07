import 'package:flutter_getx_base/app.dart';
import 'package:flutter_getx_base/env_config.dart';

void main() async {
  EnvConfig.instantiate(
    appName: "Flutter GetX NTL",
    baseUrl: "https://api.github.com",
  );

  print("LONGDB Main: ${EnvConfig.instance.appName}");

  return MyApp.appRunner();
}
