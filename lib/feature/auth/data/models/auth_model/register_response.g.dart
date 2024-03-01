// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) =>
    RegisterRequest(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      password: json['password'] as String?,
      middleName: json['middleName'] as String?,
    );

Map<String, dynamic> _$RegisterRequestToJson(RegisterRequest instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'password': instance.password,
      'middleName': instance.middleName,
    };

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      fullName: json['fullName'] as String?,
      token: json['token'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'token': instance.token,
      'email': instance.email,
      'role': instance.role,
      'phoneNumber': instance.phoneNumber,
      'id': instance.id,
    };
