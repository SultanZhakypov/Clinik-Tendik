import 'package:json_annotation/json_annotation.dart';

part 'receive_code_response.g.dart';

@JsonSerializable()
class ReceivedCodeResponse {
  final String? status;
  final String? message;

  ReceivedCodeResponse({this.status, this.message});
  factory ReceivedCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$ReceivedCodeResponseFromJson(json);
}
