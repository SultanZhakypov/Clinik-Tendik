import 'package:json_annotation/json_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterRequest {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phoneNumber;
  final String? password;
  final String? middleName;

  RegisterRequest({
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.password,
    this.middleName,
  });
  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);
}

@JsonSerializable()
class RegisterResponse {
  final String? fullName;
  final String? token;
  final String? email;
  final String? role;
  final String? phoneNumber;
  final int? id;

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);

  RegisterResponse({
    this.fullName,
    this.token,
    this.email,
    this.role,
    this.phoneNumber,
    this.id,
  });
}
