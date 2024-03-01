import 'package:json_annotation/json_annotation.dart';

part 'doctors_list_response.g.dart';

@JsonSerializable()
class DoctorsListResponse {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? image;
  final String? position;
  final String? departmentName;
  final String? scheduleUntil;
  final String? description;
  final bool? isActive;

  DoctorsListResponse({
    this.id,
    this.firstName,
    this.lastName,
    this.image,
    this.position,
    this.departmentName,
    this.scheduleUntil,
    this.description,
    this.isActive,
  });
  factory DoctorsListResponse.fromJson(Map<String, dynamic> json) =>
      _$DoctorsListResponseFromJson(json);
}
