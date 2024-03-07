// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pdf_analyze.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultDataResponseImpl _$$ResultDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ResultDataResponseImpl(
      resultNumber: json['resultNumber'] as String?,
      dateOfResult: json['dateOfResult'] as String?,
      timeOfResult: json['timeOfResult'] as String?,
    );

Map<String, dynamic> _$$ResultDataResponseImplToJson(
        _$ResultDataResponseImpl instance) =>
    <String, dynamic>{
      'resultNumber': instance.resultNumber,
      'dateOfResult': instance.dateOfResult,
      'timeOfResult': instance.timeOfResult,
    };

_$ResultNumberResponseImpl _$$ResultNumberResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ResultNumberResponseImpl(
      id: json['id'] as int?,
      pdgFileCheque: json['pdgFileCheque'] as String?,
    );

Map<String, dynamic> _$$ResultNumberResponseImplToJson(
        _$ResultNumberResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pdgFileCheque': instance.pdgFileCheque,
    };
