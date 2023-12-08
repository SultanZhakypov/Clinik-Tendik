import 'package:clinic_tendik/clinic_tendik_app.dart';
import 'package:clinic_tendik/config/injectable/injectable.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies(environment: AppEnvironment.prod);
  runApp(const ClinicTendikApp());
}
