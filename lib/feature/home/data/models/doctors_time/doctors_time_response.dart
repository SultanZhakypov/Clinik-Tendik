import 'package:json_annotation/json_annotation.dart';

part 'doctors_time_response.g.dart';

@JsonSerializable()
class DoctorsTimeResponse {
  final int? doctorId;
  final String? freeDate;
  final List<String>? freeTimes;

  DoctorsTimeResponse({
    this.doctorId,
    this.freeDate,
    this.freeTimes,
  });

  factory DoctorsTimeResponse.fromJson(Map<String, dynamic> json) =>
      _$DoctorsTimeResponseFromJson(json);
}
