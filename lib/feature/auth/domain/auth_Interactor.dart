import 'package:clinic_tendik/feature/auth/data/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

abstract class AuthInteractor {
  Future<void> exampleFunc();
}

@Singleton(as: AuthInteractor)
class AuthInteractorImpl implements AuthInteractor {
  AuthInteractorImpl(this._repository);
  final AuthRepository _repository;

  @override
  Future<void> exampleFunc() async {
    try {
      await _repository.exampleFuncRepo();
    } catch (e) {
      rethrow;
    }
  }
}
