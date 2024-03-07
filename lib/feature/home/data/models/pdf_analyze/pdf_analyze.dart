import 'package:freezed_annotation/freezed_annotation.dart';

part 'pdf_analyze.freezed.dart';
part 'pdf_analyze.g.dart';

@freezed
class ResultDataResponse with _$ResultDataResponse {
  const factory ResultDataResponse({
    String? resultNumber,
    String? dateOfResult,
    String? timeOfResult,
  }) = _ResultDataResponse;

  factory ResultDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ResultDataResponseFromJson(json);
}

@freezed
class ResultNumberResponse with _$ResultNumberResponse {
  const factory ResultNumberResponse({
    int? id,
    String? pdgFileCheque,
  }) = _ResultNumberResponse;

  factory ResultNumberResponse.fromJson(Map<String, dynamic> json) =>
      _$ResultNumberResponseFromJson(json);
}
