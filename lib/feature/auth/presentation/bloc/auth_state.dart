part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading({bool? isOverlay}) = _Loading;
  const factory AuthState.error(dynamic error) = _Error;
  const factory AuthState.successSignUp(RegisterResponse data) = _SuccessSignUp;
  const factory AuthState.successSignIn(AuthResponse data) = _SuccessSignIn;
}
