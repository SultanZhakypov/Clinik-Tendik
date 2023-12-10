import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_time_response.freezed.dart';
part 'doctor_time_response.g.dart';

@freezed
class DoctorTimeResponse with _$DoctorTimeResponse {
  const factory DoctorTimeResponse({
    String? status,
    List<DoctorTimeData>? data,
    String? message,
    bool? blocked,
    bool? popup,
  }) = _DoctorTimeResponse;

  factory DoctorTimeResponse.fromJson(Map<String, dynamic> json) =>
      _$DoctorTimeResponseFromJson(json);
}

@freezed
class DoctorTimeData with _$DoctorTimeData {
  const factory DoctorTimeData({
    DateTime? dateTime,
    bool? available,
    int? calendarRegistrationId,
  }) = _DoctorTimeData;

  factory DoctorTimeData.fromJson(Map<String, dynamic> json) =>
      _$DoctorTimeDataFromJson(json);
}
