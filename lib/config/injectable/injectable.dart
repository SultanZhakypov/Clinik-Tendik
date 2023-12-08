import 'package:clinic_tendik/config/injectable/injectable.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(initializerName: r'$initGetIt')
void configureDependencies({String? environment}) =>
    $initGetIt(getIt, environment: environment);

final class AppEnvironment {
  static const dev = Environment.dev;
  static const prod = Environment.prod;
}
