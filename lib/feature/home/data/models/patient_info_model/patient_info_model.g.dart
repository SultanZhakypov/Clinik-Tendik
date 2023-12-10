// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientInfoResponseImpl _$$PatientInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientInfoResponseImpl(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : PatientInfoData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      blocked: json['blocked'] as bool?,
      popup: json['popup'] as bool?,
    );

Map<String, dynamic> _$$PatientInfoResponseImplToJson(
        _$PatientInfoResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
      'blocked': instance.blocked,
      'popup': instance.popup,
    };

_$PatientInfoDataImpl _$$PatientInfoDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PatientInfoDataImpl(
      id: json['id'] as int?,
      pin: json['pin'] as String?,
      organisationId: json['organisationId'] as int?,
      pripisan: json['pripisan'] as bool?,
      organisationNameCode: json['organisationNameCode'] as String?,
      organisationPhone: json['organisationPhone'] as String?,
      parentOrganisationNameCode: json['parentOrganisationNameCode'] as String?,
      parentOrganisationPhone: json['parentOrganisationPhone'] as String?,
      oms: json['oms'] as String?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$PatientInfoDataImplToJson(
        _$PatientInfoDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pin': instance.pin,
      'organisationId': instance.organisationId,
      'pripisan': instance.pripisan,
      'organisationNameCode': instance.organisationNameCode,
      'organisationPhone': instance.organisationPhone,
      'parentOrganisationNameCode': instance.parentOrganisationNameCode,
      'parentOrganisationPhone': instance.parentOrganisationPhone,
      'oms': instance.oms,
      'errorMessage': instance.errorMessage,
    };
