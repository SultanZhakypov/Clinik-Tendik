// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_time_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorTimeResponseImpl _$$DoctorTimeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DoctorTimeResponseImpl(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DoctorTimeData.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      blocked: json['blocked'] as bool?,
      popup: json['popup'] as bool?,
    );

Map<String, dynamic> _$$DoctorTimeResponseImplToJson(
        _$DoctorTimeResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
      'blocked': instance.blocked,
      'popup': instance.popup,
    };

_$DoctorTimeDataImpl _$$DoctorTimeDataImplFromJson(Map<String, dynamic> json) =>
    _$DoctorTimeDataImpl(
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      available: json['available'] as bool?,
      calendarRegistrationId: json['calendarRegistrationId'] as int?,
    );

Map<String, dynamic> _$$DoctorTimeDataImplToJson(
        _$DoctorTimeDataImpl instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime?.toIso8601String(),
      'available': instance.available,
      'calendarRegistrationId': instance.calendarRegistrationId,
    };
