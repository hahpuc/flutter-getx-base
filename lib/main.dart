import 'package:flutter/material.dart';
import 'package:flutter_getx_base/app.dart';
import 'package:flutter_getx_base/env_config.dart';

void main() {
  EnvConfig.instantiate(
    appName: "Flutter GetX NTL",
    baseUrl: "https://api.github.com",
  );

  runApp(const MyApp());
}
