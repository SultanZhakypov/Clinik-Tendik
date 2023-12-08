// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsModelImpl _$$SettingsModelImplFromJson(Map<String, dynamic> json) =>
    _$SettingsModelImpl(
      status: json['status'] as String?,
      data: json['data'] as String?,
      message: json['message'] as String?,
      blocked: json['blocked'] as bool?,
      popup: json['popup'] as bool?,
    );

Map<String, dynamic> _$$SettingsModelImplToJson(_$SettingsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
      'blocked': instance.blocked,
      'popup': instance.popup,
    };
