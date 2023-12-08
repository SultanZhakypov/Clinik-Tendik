
part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
	const AuthState();

	@override
	List<Object> get props => [];
}

class AuthInitialState extends AuthState {}		

class AuthLoadingState extends AuthState {}

class AuthSuccessState extends AuthState {}

class AuthExceptionState extends AuthState {
	const AuthExceptionState(this.exception);
	final dynamic exception;

	@override
	List<Object> get props => [exception];
}	
