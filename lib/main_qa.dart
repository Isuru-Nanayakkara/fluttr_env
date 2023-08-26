import 'package:flttr_env/app.dart';
import 'package:flttr_env/environment_values.dart';
import 'package:flutter/material.dart';

void main() async {
  await EnvironmentValues.load(
    env: Environment.qa,
    fileName: 'env/qa.env',
  );

  runApp(const App());
}
