import 'package:clinic_tendik/feature/home/data/models/create_talon/create_talon_response.dart';
import 'package:clinic_tendik/feature/home/data/models/doctors_list/doctors_list_response.dart';
import 'package:clinic_tendik/feature/home/data/models/doctors_time/doctors_time_response.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_info/patient_info_response.dart';
import 'package:clinic_tendik/feature/home/data/models/receive_code/receive_code_response.dart';
import 'package:clinic_tendik/feature/home/data/models/talon_list_response/talon_list_response.dart';
import 'package:clinic_tendik/feature/home/data/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class HomeInteractor {
  final HomeRepository _repository;

  HomeInteractor(this._repository);

  List<DoctorsListResponse> _doctorsList = [];
  List<DoctorsListResponse> _filteredList = [];
  List<DoctorsListResponse> get filteredList => _filteredList;

  Future<List<TalonListResponse>> getTalonList() async =>
      await _repository.getTalonList();

  Future<TalonResponse> getTalonDetail(int appointmentId) async =>
      await _repository.getTalonDetail(appointmentId);

  Future<ReceivedCodeResponse> getCode({String? email}) async =>
      await _repository.getCode(email: email);
  Future<void> deleteTalon(int id) async => await _repository.deleteTalon(id);
  Future<TalonResponse> createTalon(
          CreateTalonRequest createTalonRequest) async =>
      await _repository.createTalon(createTalonRequest);
  Future<PatientInfoResponse> getPatientInfo() async =>
      await _repository.getPatientInfo();

  Future<List<DoctorsListResponse>> getDoctorList() async {
    final res = await _repository.getDoctorList();
    _doctorsList = res;
    return res;
  }

  Future<DoctorsTimeResponse> getDoctorsTime({
    int? doctorId,
    String? date,
  }) async =>
      await _repository.getDoctorsTime(
        doctorId: doctorId,
        date: date,
      );

  Future<List<DoctorsListResponse>> searchDoctorList(String word) async {
    if (word.isNotEmpty) {
      _filteredList = _doctorsList.where((specialist) {
        final first =
            specialist.firstName?.toLowerCase().contains(word.toLowerCase()) ??
                false;
        if (first) {
          return first;
        } else {
          return specialist.lastName
                  ?.toLowerCase()
                  .contains(word.toLowerCase()) ??
              false;
        }
      }).toList();
    } else {
      _filteredList = _doctorsList;
    }
    return _filteredList;
  }
}
