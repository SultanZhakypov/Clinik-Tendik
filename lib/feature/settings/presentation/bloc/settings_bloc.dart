
import 'package:clinic_tendik/feature/settings/domain/settings_Interactor.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
	SettingsBloc(this._interactor) : super(SettingsInitialState()) {
		on<FirstSettingsEvent>(_exampleFunc);
	}

	final SettingsInteractor _interactor;

	Future<void> _exampleFunc(
		FirstSettingsEvent event,
		Emitter<SettingsState> emit,
	) async {
	try {
		emit(SettingsLoadingState());
		//await _interactor.exampleFunc();
		emit(SettingsSuccessState());
	} catch (e) {
		emit(SettingsExceptionState(e));
		}
	}
}

