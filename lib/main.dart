import 'package:clinic_tendik/clinic_tendik_app.dart';
import 'package:clinic_tendik/core/config/injectable/injectable.dart';
import 'package:clinic_tendik/langs/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  configureDependencies(environment: AppEnvironment.prod);
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ru', 'RU'), Locale('ky', 'KY')],
      path: 'lib/langs',
      fallbackLocale: const Locale('ru', 'RU'),
      assetLoader: const CodegenLoader(),
      child: const ClinicTendikApp(),
    ),
  );
}
