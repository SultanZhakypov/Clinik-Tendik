import 'package:json_annotation/json_annotation.dart';

part 'talon_list_response.g.dart';

@JsonSerializable()
class TalonListResponse {
  final int? id;
  final String? localDate;
  final String? time;
  final String? doctorFullName;
  final String? status;
  final String? position;

  TalonListResponse({
    this.id,
    this.localDate,
    this.time,
    this.doctorFullName,
    this.status,
    this.position,
  });

  factory TalonListResponse.fromJson(Map<String, dynamic> json) =>
      _$TalonListResponseFromJson(json);
}

@JsonSerializable()
class TalonResponse {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phoneNumber;
  final String? localDate;
  final String? time;
  final String? doctorFullName;
  final String? departmentName;
  final String? status;

  TalonResponse({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.localDate,
    this.time,
    this.doctorFullName,
    this.departmentName,
    this.status,
  });
  factory TalonResponse.fromJson(Map<String, dynamic> json) =>
      _$TalonResponseFromJson(json);
}
