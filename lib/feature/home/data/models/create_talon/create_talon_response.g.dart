// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_talon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateTalonRequest _$CreateTalonRequestFromJson(Map<String, dynamic> json) =>
    CreateTalonRequest(
      doctorId: json['doctorId'] as int?,
      dateOfVisiting: json['dateOfVisiting'] as String?,
      timeOfVisiting: json['timeOfVisiting'] as String?,
      departmentName: json['departmentName'] as String?,
      userFullName: json['userFullName'] as String?,
      userPhoneNumber: json['userPhoneNumber'] as String?,
      userEmail: json['userEmail'] as String?,
    );

Map<String, dynamic> _$CreateTalonRequestToJson(CreateTalonRequest instance) =>
    <String, dynamic>{
      'doctorId': instance.doctorId,
      'dateOfVisiting': instance.dateOfVisiting,
      'timeOfVisiting': instance.timeOfVisiting,
      'departmentName': instance.departmentName,
      'userFullName': instance.userFullName,
      'userPhoneNumber': instance.userPhoneNumber,
      'userEmail': instance.userEmail,
    };
