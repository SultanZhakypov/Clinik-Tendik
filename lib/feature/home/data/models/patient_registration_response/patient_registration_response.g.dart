// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_registration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientRegistrationResponseImpl _$$PatientRegistrationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientRegistrationResponseImpl(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : PatientRegistrationData.fromJson(
              json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      blocked: json['blocked'] as bool?,
      popup: json['popup'] as bool?,
    );

Map<String, dynamic> _$$PatientRegistrationResponseImplToJson(
        _$PatientRegistrationResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
      'blocked': instance.blocked,
      'popup': instance.popup,
    };

_$ListPatientRegistrationResponseImpl
    _$$ListPatientRegistrationResponseImplFromJson(Map<String, dynamic> json) =>
        _$ListPatientRegistrationResponseImpl(
          status: json['status'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  PatientRegistrationData.fromJson(e as Map<String, dynamic>))
              .toList(),
          message: json['message'] as String?,
          blocked: json['blocked'] as bool?,
          popup: json['popup'] as bool?,
        );

Map<String, dynamic> _$$ListPatientRegistrationResponseImplToJson(
        _$ListPatientRegistrationResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
      'blocked': instance.blocked,
      'popup': instance.popup,
    };

_$PatientRegistrationDataImpl _$$PatientRegistrationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientRegistrationDataImpl(
      id: json['id'] as String?,
      ozName: json['ozName'] as String?,
      ozParentName: json['ozParentName'] as String?,
      ozAdress: json['ozAdress'] as String?,
      doctorName: json['doctorName'] as String?,
      doctorSpecialnost: json['doctorSpecialnost'] as String?,
      etajCabinet: json['etajCabinet'] as String?,
      dataVremya: json['dataVremya'] as String?,
      patientFio: json['patientFIO'] as String?,
      statusOms: json['statusOMS'] as String?,
      pin: json['pin'] as String?,
      dataCreate: json['dataCreate'] as String?,
      pripiska: json['pripiska'] as bool?,
      byteQr: json['byteQR'] as String?,
    );

Map<String, dynamic> _$$PatientRegistrationDataImplToJson(
        _$PatientRegistrationDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ozName': instance.ozName,
      'ozParentName': instance.ozParentName,
      'ozAdress': instance.ozAdress,
      'doctorName': instance.doctorName,
      'doctorSpecialnost': instance.doctorSpecialnost,
      'etajCabinet': instance.etajCabinet,
      'dataVremya': instance.dataVremya,
      'patientFIO': instance.patientFio,
      'statusOMS': instance.statusOms,
      'pin': instance.pin,
      'dataCreate': instance.dataCreate,
      'pripiska': instance.pripiska,
      'byteQR': instance.byteQr,
    };
