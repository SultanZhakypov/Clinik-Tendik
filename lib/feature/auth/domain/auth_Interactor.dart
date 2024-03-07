import 'package:clinic_tendik/core/helpers/storage_helper.dart';
import 'package:clinic_tendik/feature/auth/data/models/auth_model/auth_response.dart';
import 'package:clinic_tendik/feature/auth/data/models/auth_model/register_response.dart';
import 'package:clinic_tendik/feature/auth/data/repository/auth_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthInteractor {
  AuthInteractor(this._repository);
  final AuthRepository _repository;

  Future<AuthResponse> signIn(AuthRequest authRequest) async {
    final result = await _repository.signIn(authRequest);

    StorageHelper.saveData('token', result.token);
    StorageHelper.saveData('phoneNumber', result.phoneNumber);
    StorageHelper.saveData('fullName', result.fullName);

    return result;
  }

  Future<RegisterResponse> signUp(RegisterRequest registerRequest) async {
    final result = await _repository.signUp(registerRequest);

    StorageHelper.saveData('token', result.token);
    StorageHelper.saveData('phoneNumber', result.phoneNumber);
    StorageHelper.saveData('fullName', result.fullName);

    return result;
  }
}
