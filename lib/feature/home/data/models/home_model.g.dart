// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      status: json['status'] as String?,
      data: json['data'] as String?,
      message: json['message'] as String?,
      blocked: json['blocked'] as bool?,
      popup: json['popup'] as bool?,
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
      'blocked': instance.blocked,
      'popup': instance.popup,
    };
