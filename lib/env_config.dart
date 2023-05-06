class EnvConfig {
  late final String appName;
  late final String baseUrl;

  static final EnvConfig instance = EnvConfig._internal();

  EnvConfig._internal();

  factory EnvConfig.instantiate({
    required String appName,
    required String baseUrl,
  }) {
    if (instance.appName.isNotEmpty) return instance;

    instance.appName = appName;
    instance.baseUrl = baseUrl;

    return instance;
  }
}
