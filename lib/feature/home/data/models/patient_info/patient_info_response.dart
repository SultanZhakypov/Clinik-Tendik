import 'package:json_annotation/json_annotation.dart';

part 'patient_info_response.g.dart';

@JsonSerializable()
class PatientInfoResponse {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phoneNumber;

  factory PatientInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$PatientInfoResponseFromJson(json);

  PatientInfoResponse({
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
  });
}
