import 'package:clinic_tendik/feature/home/data/models/doctor_list_response/doctor_list_response.dart';
import 'package:clinic_tendik/feature/home/data/models/doctor_time_response/doctor_time_response.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_info_model/patient_info_model.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_registration_request/patient_registration_request.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_registration_response/patient_registration_response.dart';
import 'package:clinic_tendik/feature/home/data/repository/online_doctor_repository.dart';
import 'package:injectable/injectable.dart';

abstract class OnlineDoctorInteractor {
  Future<PatientInfoData?> getPatientInfo(
      {required String inn, required String number});
  Future<DoctorListData?> getDoctorsList();
  List<SpecialistResult>? searchDoctorList(String fio);
  Future<List<DoctorTimeData>?> getSpecialistTime({
    int? index,
    required DateTime date,
  });
  Future<PatientRegistrationData?> registerPatient(DateTime? registrationDate);
  Future<List<PatientRegistrationData>?> getListTalones();
  Future<PatientRegistrationData?> getTalon(String? id);
  Future<void> deleteTalon(String? id);
  Future<String?> getTalonPDF(String? id);
}

@Singleton(as: OnlineDoctorInteractor)
class OnlineDoctorInteractorImpl implements OnlineDoctorInteractor {
  OnlineDoctorInteractorImpl(this._repository);
  final OnlineDoctorRepository _repository;
  int? _index;
  int? _organizationId;
  int? _orgAndUserId;
  int? _patientId;
  String? _number;
  List<SpecialistResult>? _doctorsList;

  @override
  Future<PatientInfoData?> getPatientInfo(
      {required String inn, required String number}) async {
    try {
      final res = await _repository.getPatientInfoRepo(inn);
      if (res != null) {
        _organizationId = res.organisationId;
        _patientId = res.id;
        _number = number;
      }

      return res;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<DoctorListData?> getDoctorsList() async {
    try {
      final res = await _repository.getSpecialistRepo(_organizationId!);
      _doctorsList = res?.result;
      return res;
    } catch (e) {
      rethrow;
    }
  }

  @override
  List<SpecialistResult>? searchDoctorList(String fio) {
    final List<SpecialistResult>? filteredList;
    try {
      if (fio.isNotEmpty) {
        filteredList = _doctorsList
            ?.where((specialist) =>
                specialist.applicationUserFio
                    ?.toLowerCase()
                    .contains(fio.toLowerCase()) ??
                false)
            .toList();
      } else {
        filteredList = _doctorsList;
      }

      return filteredList;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<DoctorTimeData>?> getSpecialistTime({
    int? index,
    required DateTime date,
  }) async {
    try {
      if (index != null) _index = index;
      var dateTime = DateTime.now();
      _orgAndUserId = _doctorsList?.elementAt(_index ?? 0).id;
      if (date.isAfter(dateTime)) {
        dateTime = date;
      }

      final res = await _repository.getSpecialistTimeRepo(
          orgAndUserId: _orgAndUserId ?? 0, date: dateTime);

      return res;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PatientRegistrationData?> registerPatient(
      DateTime? registrationDate) async {
    try {
      final res = await _repository.registerPatientRepo(
        PatientRegistrationRequest(
          patientId: _patientId,
          number: _number,
          organisationAndApplicationUserId: _orgAndUserId,
          registrationDate: registrationDate,
        ),
      );
      return res;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<PatientRegistrationData>?> getListTalones() async {
    try {
      final res = await _repository.getListTalonesRepo();
      return res;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<PatientRegistrationData?> getTalon(String? id) async {
    try {
      final res = await _repository.getTalonRepo(id);
      return res;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteTalon(String? id) async {
    try {
      await _repository.deleteTalonRepo(id);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String?> getTalonPDF(String? id) async {
    try {
      final path = await _repository.getTalonPDF(id);
      if (path != null) {
        return path;
      } else {
        throw Exception('ERROR TALON PDF');
      }
    } catch (e) {
      rethrow;
    }
  }
}
