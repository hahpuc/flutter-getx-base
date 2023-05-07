class EnvConfig {
  late String appName;
  late String baseUrl;

  static final EnvConfig _instance = EnvConfig._internal();

  static void instantiate({required String appName, required String baseUrl}) {
    _instance.appName = appName;
    _instance.baseUrl = baseUrl;
  }

  factory EnvConfig() {
    return _instance;
  }

  static EnvConfig get instance => _instance;

  EnvConfig._internal();
}
