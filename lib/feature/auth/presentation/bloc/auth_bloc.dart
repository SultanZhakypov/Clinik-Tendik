import 'package:clinic_tendik/feature/auth/data/models/auth_model/auth_response.dart';
import 'package:clinic_tendik/feature/auth/data/models/auth_model/register_response.dart';
import 'package:clinic_tendik/feature/auth/domain/auth_interactor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthInteractor _interactor;
  AuthBloc(this._interactor) : super(const _Initial()) {
    on<AuthEvent>(_onEvent);
  }
  Future<void> _onEvent(AuthEvent event, Emitter<AuthState> emit) {
    return event.map(
      signIn: (value) async {
        try {
          emit(const AuthState.loading(isOverlay: true));
          final res = await _interactor.signIn(value.authRequest);
          emit(AuthState.successSignIn(res));
        } catch (e) {
          emit(AuthState.error(e));
        }
      },
      signUp: (value) async {
        try {
          emit(const AuthState.loading(isOverlay: true));
          final res = await _interactor.signUp(value.registerRequest);
          emit(AuthState.successSignUp(res));
        } catch (e) {
          emit(AuthState.error(e));
        }
      },
    );
  }
}
