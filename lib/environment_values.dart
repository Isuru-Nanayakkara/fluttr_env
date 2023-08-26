import 'package:flutter_dotenv/flutter_dotenv.dart';

enum Environment {
  dev,
  qa,
  prod,
}

class EnvironmentValues {
  static final EnvironmentValues _instance = EnvironmentValues._();
  static Environment? _environment;

  EnvironmentValues._();

  static EnvironmentValues get instance => _instance;

  static Future load({required env, required String fileName}) async {
    _environment = env;
    await dotenv.load(fileName: fileName);
  }

  static Environment get environment {
    return _environment!;
  }

  static String get apiBaseURL {
    return dotenv.get('API_URL');
  }
}
