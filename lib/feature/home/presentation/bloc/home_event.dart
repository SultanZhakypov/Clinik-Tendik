part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getTalonList() = _GetTalonList;
  const factory HomeEvent.getTalonDetail(int id) = _GetTalonDetail;
  const factory HomeEvent.getDoctorList() = _GetDoctorList;
  const factory HomeEvent.searchDoctorList(String word) = _SearchDoctorList;
  const factory HomeEvent.getCode(String email) = _GetCode;
  const factory HomeEvent.deleteTalon(int id) = _DeleteTalon;
  const factory HomeEvent.createTalon(CreateTalonRequest createTalonRequest) = _CreateTalon;
  const factory HomeEvent.getDoctorsTime({
    int? doctorId,
    String? date,
    required bool isOverlay,
    required bool nextPage,
  }) = _GetDoctorsTime;
}
