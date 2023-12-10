part of 'online_doctor_bloc.dart';

abstract class OnlineDoctorState extends Equatable {
  const OnlineDoctorState();

  @override
  List<Object?> get props => [];
}

class OnlineDoctorInitialState extends OnlineDoctorState {}

class OnlineDoctorLoadingState extends OnlineDoctorState {
  const OnlineDoctorLoadingState({this.isOverlay = false});
  final bool isOverlay;

  @override
  List<Object> get props => [isOverlay];
}

class OnlineDoctorExceptionState extends OnlineDoctorState {
  const OnlineDoctorExceptionState(this.exception);
  final dynamic exception;
  @override
  List<Object?> get props => [exception];
}

class OnlineDoctorSuccessState extends OnlineDoctorState {
  const OnlineDoctorSuccessState(this.data);
  final PatientInfoData? data;

  @override
  List<Object?> get props => [data];
}

class DoctorsListSuccessState extends OnlineDoctorState {
  const DoctorsListSuccessState(this.data);
  final List<SpecialistResult>? data;

  @override
  List<Object?> get props => [data];
}

class DoctorsTimeSuccessState extends OnlineDoctorState {
  const DoctorsTimeSuccessState(this.data,{ required this.nextPage});
  final List<DoctorTimeData>? data;
  final bool nextPage;

  @override
  List<Object?> get props => [data];
}

class PatientRegisterSuccessState extends OnlineDoctorState {
  const PatientRegisterSuccessState(this.data);
  final PatientRegistrationData? data;

  @override
  List<Object?> get props => [data];
}

class ListTalonesSuccessState extends OnlineDoctorState {
  const ListTalonesSuccessState(this.data);
  final List<PatientRegistrationData>? data;

  @override
  List<Object?> get props => [data];
}

class TalonesSuccessState extends OnlineDoctorState {
  const TalonesSuccessState(this.data);
  final PatientRegistrationData? data;

  @override
  List<Object?> get props => [data];
}

class DeleteTalonSuccessState extends OnlineDoctorState {
  const DeleteTalonSuccessState();

  @override
  List<Object?> get props => [];
}

class PDFTalonSuccessState extends OnlineDoctorState {
  const PDFTalonSuccessState(this.path);

  final String path;

  @override
  List<Object?> get props => [path];
}
