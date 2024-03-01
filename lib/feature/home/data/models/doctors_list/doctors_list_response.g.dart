// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorsListResponse _$DoctorsListResponseFromJson(Map<String, dynamic> json) =>
    DoctorsListResponse(
      id: json['id'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      image: json['image'] as String?,
      position: json['position'] as String?,
      departmentName: json['departmentName'] as String?,
      scheduleUntil: json['scheduleUntil'] as String?,
      description: json['description'] as String?,
      isActive: json['isActive'] as bool?,
    );

Map<String, dynamic> _$DoctorsListResponseToJson(
        DoctorsListResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'image': instance.image,
      'position': instance.position,
      'departmentName': instance.departmentName,
      'scheduleUntil': instance.scheduleUntil,
      'description': instance.description,
      'isActive': instance.isActive,
    };
