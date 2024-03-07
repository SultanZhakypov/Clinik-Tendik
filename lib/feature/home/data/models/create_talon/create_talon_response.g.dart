// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_talon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateTalonRequest _$CreateTalonRequestFromJson(Map<String, dynamic> json) =>
    CreateTalonRequest(
      doctorId: json['doctorId'] as int?,
      middleName: json['middleName'] as String?,
      dateOfVisiting: json['dateOfVisiting'] as String?,
      timeOfVisiting: json['timeOfVisiting'] as String?,
      departmentName: json['departmentName'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$CreateTalonRequestToJson(CreateTalonRequest instance) =>
    <String, dynamic>{
      'doctorId': instance.doctorId,
      'dateOfVisiting': instance.dateOfVisiting,
      'timeOfVisiting': instance.timeOfVisiting,
      'departmentName': instance.departmentName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'phoneNumber': instance.phoneNumber,
    };
