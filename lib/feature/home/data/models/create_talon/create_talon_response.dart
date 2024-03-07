import 'package:json_annotation/json_annotation.dart';

part 'create_talon_response.g.dart';

@JsonSerializable()
class CreateTalonRequest {
  final int? doctorId;
  final String? dateOfVisiting;
  final String? timeOfVisiting;
  final String? departmentName;
  final String? firstName;
  final String? lastName;
  final String? middleName;
  final String? phoneNumber;

  factory CreateTalonRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTalonRequestFromJson(json);

  CreateTalonRequest({
    this.doctorId,
    this.middleName,
    this.dateOfVisiting,
    this.timeOfVisiting,
    this.departmentName,
    this.firstName,
    this.lastName,
    this.phoneNumber,
  });
  Map<String, dynamic> toJson() => _$CreateTalonRequestToJson(this);
}
