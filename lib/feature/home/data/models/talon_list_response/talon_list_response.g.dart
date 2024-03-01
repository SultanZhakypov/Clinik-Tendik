// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'talon_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TalonListResponse _$TalonListResponseFromJson(Map<String, dynamic> json) =>
    TalonListResponse(
      id: json['id'] as int?,
      localDate: json['localDate'] as String?,
      time: json['time'] as String?,
      doctorFullName: json['doctorFullName'] as String?,
      status: json['status'] as String?,
      position: json['position'] as String?,
    );

Map<String, dynamic> _$TalonListResponseToJson(TalonListResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'localDate': instance.localDate,
      'time': instance.time,
      'doctorFullName': instance.doctorFullName,
      'status': instance.status,
      'position': instance.position,
    };

TalonResponse _$TalonResponseFromJson(Map<String, dynamic> json) =>
    TalonResponse(
      id: json['id'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      localDate: json['localDate'] as String?,
      time: json['time'] as String?,
      doctorFullName: json['doctorFullName'] as String?,
      departmentName: json['departmentName'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$TalonResponseToJson(TalonResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'localDate': instance.localDate,
      'time': instance.time,
      'doctorFullName': instance.doctorFullName,
      'departmentName': instance.departmentName,
      'status': instance.status,
    };
