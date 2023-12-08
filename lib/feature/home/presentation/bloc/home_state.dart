
part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
	const HomeState();

	@override
	List<Object> get props => [];
}

class HomeInitialState extends HomeState {}		

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {}

class HomeExceptionState extends HomeState {
	const HomeExceptionState(this.exception);
	final dynamic exception;

	@override
	List<Object> get props => [exception];
}	
