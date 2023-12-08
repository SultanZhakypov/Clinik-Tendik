import 'package:clinic_tendik/feature/auth/domain/auth_Interactor.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._interactor) : super(AuthInitialState()) {
    on<FirstAuthEvent>(_exampleFunc);
  }

  final AuthInteractor _interactor;

  Future<void> _exampleFunc(
    FirstAuthEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(AuthLoadingState());
      //await _interactor.exampleFunc();
      emit(AuthSuccessState());
    } catch (e) {
      emit(AuthExceptionState(e));
    }
  }
}
