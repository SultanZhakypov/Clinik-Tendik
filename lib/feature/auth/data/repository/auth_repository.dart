import 'package:clinic_tendik/core/config/dio/dio_generator.dart';
import 'package:clinic_tendik/feature/auth/data/models/auth_model/auth_response.dart';
import 'package:clinic_tendik/feature/auth/data/models/auth_model/register_response.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRepository {
  Future<AuthResponse> signIn(AuthRequest authRequest);
  Future<RegisterResponse> signUp(RegisterRequest registerRequest);
}

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._dioGenerator);

  final DioGenerator _dioGenerator;

  static const _signIn = 'auth/signIn';
  static const _signUp = 'auth/signUp';

  @override
  Future<AuthResponse> signIn(AuthRequest authRequest) async {
    final response = await _dioGenerator.dio.post(
      _signIn,
      data: authRequest.toJson(),
    );

    return AuthResponse.fromJson(response.data);
  }

  @override
  Future<RegisterResponse> signUp(RegisterRequest registerRequest) async {
    final response = await _dioGenerator.dio.post(
      _signUp,
      data: registerRequest.toJson(),
    );

    return RegisterResponse.fromJson(response.data);
  }
}
