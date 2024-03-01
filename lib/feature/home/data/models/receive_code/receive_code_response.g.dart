// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receive_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReceivedCodeResponse _$ReceivedCodeResponseFromJson(
        Map<String, dynamic> json) =>
    ReceivedCodeResponse(
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ReceivedCodeResponseToJson(
        ReceivedCodeResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
