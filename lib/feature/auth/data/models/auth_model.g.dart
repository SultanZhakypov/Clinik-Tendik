// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthModelImpl _$$AuthModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthModelImpl(
      status: json['status'] as String?,
      data: json['data'] as String?,
      message: json['message'] as String?,
      blocked: json['blocked'] as bool?,
      popup: json['popup'] as bool?,
    );

Map<String, dynamic> _$$AuthModelImplToJson(_$AuthModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
      'blocked': instance.blocked,
      'popup': instance.popup,
    };
