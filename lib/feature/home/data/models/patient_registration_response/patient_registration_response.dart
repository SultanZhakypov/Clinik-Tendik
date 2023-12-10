import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_registration_response.freezed.dart';
part 'patient_registration_response.g.dart';

@freezed
class PatientRegistrationResponse with _$PatientRegistrationResponse {
  const factory PatientRegistrationResponse({
    String? status,
    PatientRegistrationData? data,
    String? message,
    bool? blocked,
    bool? popup,
  }) = _PatientRegistrationResponse;

  factory PatientRegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$PatientRegistrationResponseFromJson(json);
}

@freezed
class ListPatientRegistrationResponse with _$ListPatientRegistrationResponse {
  const factory ListPatientRegistrationResponse({
    String? status,
    List<PatientRegistrationData>? data,
    String? message,
    bool? blocked,
    bool? popup,
  }) = _ListPatientRegistrationResponse;

  factory ListPatientRegistrationResponse.fromJson(Map<String, dynamic> json) =>
      _$ListPatientRegistrationResponseFromJson(json);
}

@freezed
class PatientRegistrationData with _$PatientRegistrationData {
  const factory PatientRegistrationData({
    String? id,
    String? ozName,
    String? ozParentName,
    String? ozAdress,
    String? doctorName,
    String? doctorSpecialnost,
    String? etajCabinet,
    String? dataVremya,
    @JsonKey(name: 'patientFIO') String? patientFio,
    @JsonKey(name: 'statusOMS') String? statusOms,
    String? pin,
    String? dataCreate,
    bool? pripiska,
    @JsonKey(name: 'byteQR') String? byteQr,
  }) = _PatientRegistrationData;

  factory PatientRegistrationData.fromJson(Map<String, dynamic> json) =>
      _$PatientRegistrationDataFromJson(json);
}
