// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatientInfoResponse _$PatientInfoResponseFromJson(Map<String, dynamic> json) =>
    PatientInfoResponse(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$PatientInfoResponseToJson(
        PatientInfoResponse instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
    };
