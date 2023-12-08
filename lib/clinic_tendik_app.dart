import 'package:clinic_tendik/config/app_router/auto_router.gr.dart';
import 'package:flutter/material.dart';

class ClinicTendikApp extends StatefulWidget {
  const ClinicTendikApp({super.key});
  @override
  State<ClinicTendikApp> createState() => _ClinicTendikAppState();
}

class _ClinicTendikAppState extends State<ClinicTendikApp> {
  late final AppRouter _rootRouter;

  @override
  void initState() {
    _rootRouter = AppRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Clinic Tendik',
      routeInformationParser: _rootRouter.defaultRouteParser(),
    );
  }
}
