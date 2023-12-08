import 'package:clinic_tendik/feature/settings/data/repository/settings_repository.dart';
import 'package:injectable/injectable.dart';

abstract class SettingsInteractor {
  Future<void> exampleFunc();
}

@Singleton(as: SettingsInteractor)
class SettingsInteractorImpl implements SettingsInteractor {
  SettingsInteractorImpl(this._repository);
  final SettingsRepository _repository;

  @override
  Future<void> exampleFunc() async {
    try {
      await _repository.exampleFuncRepo();
    } catch (e) {
      rethrow;
    }
  }
}
