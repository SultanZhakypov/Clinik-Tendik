import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @prod
  @Named('dpBaseUrl')
  @singleton
  String get baseUrlDpProd => ' API ';
}
