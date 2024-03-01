import 'package:json_annotation/json_annotation.dart';

part 'create_talon_response.g.dart';

@JsonSerializable()
class CreateTalonRequest {
  final int? doctorId;
  final String? dateOfVisiting;
  final String? timeOfVisiting;
  final String? departmentName;
  final String? userFullName;
  final String? userPhoneNumber;
  final String? userEmail;

  CreateTalonRequest({
    this.doctorId,
    this.dateOfVisiting,
    this.timeOfVisiting,
    this.departmentName,
    this.userFullName,
    this.userPhoneNumber,
    this.userEmail,
  });
  factory CreateTalonRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTalonRequestFromJson(json);
  Map<String, dynamic> toJson() => _$CreateTalonRequestToJson(this);
}

