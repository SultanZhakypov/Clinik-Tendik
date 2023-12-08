import 'package:clinic_tendik/feature/home/domain/home_Interactor.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._interactor) : super(HomeInitialState()) {
    on<FirstHomeEvent>(_exampleFunc);
  }

  final HomeInteractor _interactor;

  Future<void> _exampleFunc(
    FirstHomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      emit(HomeLoadingState());
      //await _interactor.exampleFunc();
      emit(HomeSuccessState());
    } catch (e) {
      emit(HomeExceptionState(e));
    }
  }
}
