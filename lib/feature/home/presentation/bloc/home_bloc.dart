import 'package:clinic_tendik/feature/home/data/models/create_talon/create_talon_response.dart';
import 'package:clinic_tendik/feature/home/data/models/doctors_list/doctors_list_response.dart';
import 'package:clinic_tendik/feature/home/data/models/doctors_time/doctors_time_response.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_info/patient_info_response.dart';
import 'package:clinic_tendik/feature/home/data/models/pdf_analyze/pdf_analyze.dart';
import 'package:clinic_tendik/feature/home/data/models/talon_list_response/talon_list_response.dart';
import 'package:clinic_tendik/feature/home/domain/home_interactor.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeInteractor _interactor;
  HomeBloc(this._interactor) : super(const _Initial()) {
    on<HomeEvent>(_onEvent);
  }

  Future<void> _onEvent(HomeEvent event, Emitter<HomeState> emit) {
    return event.map(
      getTalonList: (value) async {
        try {
          emit(const HomeState.loading());
          final res = await _interactor.getTalonList();
          emit(HomeState.successTalonList(res));
        } catch (e) {
          emit(HomeState.error(e));
        }
      },
      getTalonDetail: (value) async {
        try {
          emit(const HomeState.loading(isOverlay: true));
          final res = await _interactor.getTalonDetail(value.id);
          emit(HomeState.successTalon(res,false));
        } catch (e) {
          emit(HomeState.error(e));
        }
      },
      getDoctorList: (value) async {
        try {
          emit(const HomeState.loading());
          final res = await _interactor.getDoctorList();
          emit(HomeState.successDoctorList(res));
        } catch (e) {
          emit(HomeState.error(e));
        }
      },
      searchDoctorList: (value) async {
        try {
          emit(const HomeState.loading());
          final res = await _interactor.searchDoctorList(value.word);
          emit(HomeState.successDoctorList(res));
        } catch (e) {
          emit(HomeState.error(e));
        }
      },
      getDoctorsTime: (value) async {
        try {
          emit(HomeState.loading(isOverlay: value.isOverlay));
          final res = await _interactor.getDoctorsTime(
            doctorId: value.doctorId,
            date: value.date,
          );
          emit(HomeState.successDoctorsTime(
            data: res,
            nextPage: value.nextPage,
          ));
        } catch (e) {
          emit(HomeState.error(e));
        }
      },
      getCode: (value) async {
        try {
          emit(const HomeState.loading(isOverlay: true));
          emit(HomeState.successCode(
            patient: await _interactor.getPatientInfo(),
          ));
        } catch (e) {
          emit(HomeState.error(e));
        }
      },
      deleteTalon: (value) async {
        try {
          emit(const HomeState.loading(isOverlay: true));
          await _interactor.deleteTalon(value.id);
          emit(const HomeState.successDeleteTalon());
        } catch (e) {
          emit(HomeState.error(e));
        }
      },
      createTalon: (value) async {
        try {
          emit(const HomeState.loading(isOverlay: true));
          final res = await _interactor.createTalon(value.createTalonRequest);
          emit(HomeState.successTalon(res,true));
        } catch (e) {
          emit(HomeState.error(e));
        }
      },
      getResultNumber: (v) async {
        try {
          emit(const HomeState.loading(isOverlay: true));
          final res = await _interactor.getResultNumber(v.resultNumber);
          emit(HomeState.successResultNumber(res));
        } catch (e) {
          emit(HomeState.error(e));
        }
      },
      getResultData: (v) async {
        try {
          emit(const HomeState.loading());
          final res = await _interactor.getResultData();
          emit(HomeState.successgetResultData(res));
        } catch (e) {
          emit(HomeState.error(e));
        }
      },
      getPDF: (v) async {
        try {
          emit(const HomeState.loading());
          final res = await _interactor.getPDF(v.fileName);
          emit(HomeState.successPDF(res));
        } catch (e) {
          emit(HomeState.error(e));
        }
      },
    );
  }
}
