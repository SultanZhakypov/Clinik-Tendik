
part of 'settings_bloc.dart';

abstract class SettingsState extends Equatable {
	const SettingsState();

	@override
	List<Object> get props => [];
}

class SettingsInitialState extends SettingsState {}		

class SettingsLoadingState extends SettingsState {}

class SettingsSuccessState extends SettingsState {}

class SettingsExceptionState extends SettingsState {
	const SettingsExceptionState(this.exception);
	final dynamic exception;

	@override
	List<Object> get props => [exception];
}	
