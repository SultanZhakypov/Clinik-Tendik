import 'package:json_annotation/json_annotation.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class AuthResponse {
  final String? token;
  final String? email;
  final String? role;
  final String? fullName;
  final String? phoneNumber;
  final int? id;

  AuthResponse({
    this.token,
    this.email,
    this.role,
    this.fullName,
    this.phoneNumber,
    this.id,
  });
  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@JsonSerializable()
class AuthRequest {
  final String? password;
  final String? email;

  AuthRequest({
    this.email,
    this.password,
  });
  factory AuthRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthRequestFromJson(json);
  Map<String, dynamic> toJson() => _$AuthRequestToJson(this);
}
