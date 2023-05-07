import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_getx_base/bindings/init_binding.dart';
import 'package:flutter_getx_base/env_config.dart';
import 'package:flutter_getx_base/generated/l10n.dart';
import 'package:flutter_getx_base/presentation/pages/demo/demo_page.dart';
import 'package:flutter_getx_base/routes/app_pages.dart';
import 'package:flutter_getx_base/routes/routes.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final _envConfig = EnvConfig.instance;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: _envConfig.appName,
      initialRoute: AppRoutes.initialRoute,
      initialBinding: InitialBinding(),
      getPages: AppPages.getRoutes,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
        primaryColor: Colors.blue,
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light
              .copyWith(statusBarColor: Colors.transparent),
        ),
      ),
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      home: const DemoPage(),
    );
  }

  static Future<void> appRunner() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    print("LONGDB AppRunner: ${_envConfig.appName}");

    return runApp(const MyApp());
  }
}
