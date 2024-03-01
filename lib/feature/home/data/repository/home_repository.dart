import 'package:clinic_tendik/core/config/dio/dio_generator.dart';
import 'package:clinic_tendik/feature/home/data/models/create_talon/create_talon_response.dart';
import 'package:clinic_tendik/feature/home/data/models/doctors_list/doctors_list_response.dart';
import 'package:clinic_tendik/feature/home/data/models/doctors_time/doctors_time_response.dart';
import 'package:clinic_tendik/feature/home/data/models/patient_info/patient_info_response.dart';
import 'package:clinic_tendik/feature/home/data/models/receive_code/receive_code_response.dart';
import 'package:clinic_tendik/feature/home/data/models/talon_list_response/talon_list_response.dart';
import 'package:injectable/injectable.dart';

abstract class HomeRepository {
  Future<List<TalonListResponse>> getTalonList();
  Future<TalonResponse> getTalonDetail(int appointmentId);
  Future<List<DoctorsListResponse>> getDoctorList();
  Future<DoctorsTimeResponse> getDoctorsTime({
    int? doctorId,
    String? date,
  });
  Future<ReceivedCodeResponse> getCode({String? email});
  Future<void> deleteTalon(int id);
  Future<TalonResponse> createTalon(CreateTalonRequest createTalonRequest);
  Future<PatientInfoResponse> getPatientInfo();
}

@Singleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._dioGenerator);
  final DioGenerator _dioGenerator;

  static const _getTalon = 'appointments';
  static const _deleteTalon = 'appointments/canceled';
  static const _getDoctors = 'doctors';
  static const _getDoctorsTime = 'appointments/getFreeSlotsByDate';
  static const _getCode = 'appointments/received';
  static const _createTalon = 'appointments/createOnlineAppointments';
  static const _getPatientInfo = 'patients/profile';

  @override
  Future<List<TalonListResponse>> getTalonList() async {
    final response = await _dioGenerator.dio.get(_getTalon);

    final talon = response.data;
    return (talon as List).map((v) => TalonListResponse.fromJson(v)).toList();
  }

  @override
  Future<TalonResponse> getTalonDetail(int appointmentId) async {
    final response = await _dioGenerator.dio.get('$_getTalon/$appointmentId');

    return TalonResponse.fromJson(response.data);
  }

  @override
  Future<List<DoctorsListResponse>> getDoctorList() async {
    final response = await _dioGenerator.dio.get(_getDoctors);

    final doctor = response.data;
    return (doctor as List)
        .map((v) => DoctorsListResponse.fromJson(v))
        .toList();
  }

  @override
  Future<DoctorsTimeResponse> getDoctorsTime(
      {int? doctorId, String? date}) async {
    final response =
        await _dioGenerator.dio.get(_getDoctorsTime, queryParameters: {
      "doctorId": doctorId,
      "date": date,
    });

    return DoctorsTimeResponse.fromJson(response.data);
  }

  @override
  Future<ReceivedCodeResponse> getCode({String? email}) async {
    final response = await _dioGenerator.dio
        .get(_getCode, queryParameters: {"email": email});

    return ReceivedCodeResponse.fromJson(response.data);
  }

  @override
  Future<void> deleteTalon(int id) async {
    await _dioGenerator.dio.post(_deleteTalon, queryParameters: {
      'appointmentId': id,
    });
  }

  @override
  Future<TalonResponse> createTalon(
      CreateTalonRequest createTalonRequest) async {
    final response = await _dioGenerator.dio
        .post(_createTalon, data: createTalonRequest.toJson());

    return TalonResponse.fromJson(response.data);
  }

  @override
  Future<PatientInfoResponse> getPatientInfo() async {
    final response = await _dioGenerator.dio.get(_getPatientInfo);

    return PatientInfoResponse.fromJson(response.data);
  }
}
