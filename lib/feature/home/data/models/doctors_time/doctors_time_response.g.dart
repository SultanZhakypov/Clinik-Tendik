// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_time_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorsTimeResponse _$DoctorsTimeResponseFromJson(Map<String, dynamic> json) =>
    DoctorsTimeResponse(
      doctorId: json['doctorId'] as int?,
      freeDate: json['freeDate'] as String?,
      freeTimes: (json['freeTimes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DoctorsTimeResponseToJson(
        DoctorsTimeResponse instance) =>
    <String, dynamic>{
      'doctorId': instance.doctorId,
      'freeDate': instance.freeDate,
      'freeTimes': instance.freeTimes,
    };
