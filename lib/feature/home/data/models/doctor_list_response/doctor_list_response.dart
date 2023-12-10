import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_list_response.freezed.dart';
part 'doctor_list_response.g.dart';

@freezed
class DoctorListResponse with _$DoctorListResponse {
  const factory DoctorListResponse({
    String? status,
    DoctorListData? data,
    String? message,
    bool? blocked,
    bool? popup,
  }) = _DoctorListResponse;

  factory DoctorListResponse.fromJson(Map<String, dynamic> json) =>
      _$DoctorListResponseFromJson(json);
}

@freezed
class DoctorListData with _$DoctorListData {
  const factory DoctorListData({
    int? currentPage,
    int? pageSize,
    int? totalPages,
    int? totalItems,
    List<SpecialistResult>? result,
  }) = _DoctorListData;

  factory DoctorListData.fromJson(Map<String, dynamic> json) =>
      _$DoctorListDataFromJson(json);
}

@freezed
class SpecialistResult with _$SpecialistResult {
  const factory SpecialistResult({
    int? id,
    String? applicationUserId,
    @JsonKey(name: 'applicationUserFIO')
    String? applicationUserFio,
    int? organisationId,
    String? organisationName,
    int? dictDoljnostId,
    String? dictDoljnostName,
    int? typeDoctor,
    String? etaj,
    String? numberCabinet,
  }) = _SpecialistResult;

  factory SpecialistResult.fromJson(Map<String, dynamic> json) =>
      _$SpecialistResultFromJson(json);
}
