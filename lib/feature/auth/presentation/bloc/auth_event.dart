part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn(AuthRequest authRequest) = _SignIn;
  const factory AuthEvent.signUp(RegisterRequest registerRequest) = _SignUp;
}
