import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_info_model.freezed.dart';
part 'patient_info_model.g.dart';

@freezed
class PatientInfoResponse with _$PatientInfoResponse {
  const factory PatientInfoResponse({
    String? status,
    PatientInfoData? data,
    String? message,
    bool? blocked,
    bool? popup,
  }) = _PatientInfoResponse;
  factory PatientInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$PatientInfoResponseFromJson(json);
}

@freezed
class PatientInfoData with _$PatientInfoData {
  const factory PatientInfoData({
    int? id,
    String? pin,
    int? organisationId,
    bool? pripisan,
    String? organisationNameCode,
    String? organisationPhone,
    String? parentOrganisationNameCode,
    String? parentOrganisationPhone,
    String? oms,
    String? errorMessage,
  }) = _PatientInfoData;
  factory PatientInfoData.fromJson(Map<String, dynamic> json) =>
      _$PatientInfoDataFromJson(json);
}
