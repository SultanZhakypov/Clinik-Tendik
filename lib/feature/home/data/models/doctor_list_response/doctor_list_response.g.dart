// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorListResponseImpl _$$DoctorListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DoctorListResponseImpl(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : DoctorListData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      blocked: json['blocked'] as bool?,
      popup: json['popup'] as bool?,
    );

Map<String, dynamic> _$$DoctorListResponseImplToJson(
        _$DoctorListResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
      'blocked': instance.blocked,
      'popup': instance.popup,
    };

_$DoctorListDataImpl _$$DoctorListDataImplFromJson(Map<String, dynamic> json) =>
    _$DoctorListDataImpl(
      currentPage: json['currentPage'] as int?,
      pageSize: json['pageSize'] as int?,
      totalPages: json['totalPages'] as int?,
      totalItems: json['totalItems'] as int?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => SpecialistResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DoctorListDataImplToJson(
        _$DoctorListDataImpl instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
      'totalItems': instance.totalItems,
      'result': instance.result,
    };

_$SpecialistResultImpl _$$SpecialistResultImplFromJson(
        Map<String, dynamic> json) =>
    _$SpecialistResultImpl(
      id: json['id'] as int?,
      applicationUserId: json['applicationUserId'] as String?,
      applicationUserFio: json['applicationUserFIO'] as String?,
      organisationId: json['organisationId'] as int?,
      organisationName: json['organisationName'] as String?,
      dictDoljnostId: json['dictDoljnostId'] as int?,
      dictDoljnostName: json['dictDoljnostName'] as String?,
      typeDoctor: json['typeDoctor'] as int?,
      etaj: json['etaj'] as String?,
      numberCabinet: json['numberCabinet'] as String?,
      imagePath: json['imagePath'] as String?,
    );

Map<String, dynamic> _$$SpecialistResultImplToJson(
        _$SpecialistResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'applicationUserId': instance.applicationUserId,
      'applicationUserFIO': instance.applicationUserFio,
      'organisationId': instance.organisationId,
      'organisationName': instance.organisationName,
      'dictDoljnostId': instance.dictDoljnostId,
      'dictDoljnostName': instance.dictDoljnostName,
      'typeDoctor': instance.typeDoctor,
      'etaj': instance.etaj,
      'numberCabinet': instance.numberCabinet,
      'imagePath': instance.imagePath,
    };
