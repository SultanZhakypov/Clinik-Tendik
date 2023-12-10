import 'package:clinic_tendik/feature/home/data/models/doctor_list_response/doctor_list_response.dart';
import 'package:clinic_tendik/feature/home/data/models/doctor_time_response/doctor_time_response.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_info_model/patient_info_model.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_registration_response/patient_registration_response.dart';
import 'package:clinic_tendik/feature/home/domain/online_doctor_Interactor.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'online_doctor_event.dart';
part 'online_doctor_state.dart';

@injectable
class OnlineDoctorBloc extends Bloc<OnlineDoctorEvent, OnlineDoctorState> {
  OnlineDoctorBloc(this._interactor) : super(const OnlineDoctorLoadingState()) {
    on<GetPatientInfoEvent>(_getPatientInfo);
    on<GetDoctorsList>(_getDoctorsList);
    on<SearchDoctorsList>(_searchDoctorsList);
    on<GetDoctorsTime>(_getDoctorsTime);
    on<GetPatientTalon>(_registerTalon);
    on<GetListTalones>(_getListTalones);
    on<GetTalones>(_getTalones);
    on<DeleteTalon>(_deleteTalon);
    on<GetTalonPdf>(_getTalonPDF);
  }

  final OnlineDoctorInteractor _interactor;

  Future<void> _getPatientInfo(
    GetPatientInfoEvent event,
    Emitter<OnlineDoctorState> emit,
  ) async {
    try {
      emit(const OnlineDoctorLoadingState(isOverlay: true));
      final data = await _interactor.getPatientInfo(
          inn: event.inn, number: event.number);
      emit(OnlineDoctorSuccessState(data));
    } catch (e) {
      emit(OnlineDoctorExceptionState(e));
    }
  }

  Future<void> _getDoctorsList(
    GetDoctorsList event,
    Emitter<OnlineDoctorState> emit,
  ) async {
    try {
      emit(const OnlineDoctorLoadingState());
      final data = await _interactor.getDoctorsList();
      emit(DoctorsListSuccessState(data?.result));
    } catch (e) {
      emit(OnlineDoctorExceptionState(e));
    }
  }

  Future<void> _searchDoctorsList(
    SearchDoctorsList event,
    Emitter<OnlineDoctorState> emit,
  ) async {
    try {
      emit(const OnlineDoctorLoadingState());
      final data = _interactor.searchDoctorList(event.fio);
      emit(DoctorsListSuccessState(data));
    } catch (e) {
      emit(OnlineDoctorExceptionState(e));
    }
  }

  Future<void> _getDoctorsTime(
    GetDoctorsTime event,
    Emitter<OnlineDoctorState> emit,
  ) async {
    try {
      emit( OnlineDoctorLoadingState(isOverlay: event.nextPage));
      final data = await _interactor.getSpecialistTime(
          index: event.index, date: event.date);
      emit(DoctorsTimeSuccessState(data, nextPage: event.nextPage));
    } catch (e) {
      emit(OnlineDoctorExceptionState(e));
    }
  }

  Future<void> _registerTalon(
    GetPatientTalon event,
    Emitter<OnlineDoctorState> emit,
  ) async {
    try {
      emit(const OnlineDoctorLoadingState(isOverlay: true));
      final data = await _interactor.registerPatient(event.registrationDate);
      emit(PatientRegisterSuccessState(data));
    } catch (e) {
      emit(OnlineDoctorExceptionState(e));
    }
  }

  Future<void> _getListTalones(
    GetListTalones event,
    Emitter<OnlineDoctorState> emit,
  ) async {
    try {
      emit(const OnlineDoctorLoadingState());
      final data = await _interactor.getListTalones();
      emit(ListTalonesSuccessState(data));
    } catch (e) {
      emit(OnlineDoctorExceptionState(e));
    }
  }

  Future<void> _getTalones(
    GetTalones event,
    Emitter<OnlineDoctorState> emit,
  ) async {
    try {
      emit(const OnlineDoctorLoadingState(isOverlay: true));
      final data = await _interactor.getTalon(event.id);
      emit(TalonesSuccessState(data));
    } catch (e) {
      emit(OnlineDoctorExceptionState(e));
    }
  }

  Future<void> _deleteTalon(
    DeleteTalon event,
    Emitter<OnlineDoctorState> emit,
  ) async {
    try {
      emit(const OnlineDoctorLoadingState(isOverlay: true));
      await _interactor.deleteTalon(event.id);
      add(const GetListTalones());
      emit(const DeleteTalonSuccessState());
    } catch (e) {
      emit(OnlineDoctorExceptionState(e));
    }
  }

  Future<void> _getTalonPDF(
    GetTalonPdf event,
    Emitter<OnlineDoctorState> emit,
  ) async {
    try {
      emit(const OnlineDoctorLoadingState(isOverlay: true));
      final data = await _interactor.getTalonPDF(event.id);
      emit(PDFTalonSuccessState(data ?? ''));
    } catch (e) {
      emit(OnlineDoctorExceptionState(e));
    }
  }
}
