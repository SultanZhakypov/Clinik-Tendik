// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientInfoResponse _$PatientInfoResponseFromJson(Map<String, dynamic> json) {
  return _PatientInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$PatientInfoResponse {
  String? get status => throw _privateConstructorUsedError;
  PatientInfoData? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get blocked => throw _privateConstructorUsedError;
  bool? get popup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientInfoResponseCopyWith<PatientInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientInfoResponseCopyWith<$Res> {
  factory $PatientInfoResponseCopyWith(
          PatientInfoResponse value, $Res Function(PatientInfoResponse) then) =
      _$PatientInfoResponseCopyWithImpl<$Res, PatientInfoResponse>;
  @useResult
  $Res call(
      {String? status,
      PatientInfoData? data,
      String? message,
      bool? blocked,
      bool? popup});

  $PatientInfoDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PatientInfoResponseCopyWithImpl<$Res, $Val extends PatientInfoResponse>
    implements $PatientInfoResponseCopyWith<$Res> {
  _$PatientInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? blocked = freezed,
    Object? popup = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PatientInfoData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      popup: freezed == popup
          ? _value.popup
          : popup // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientInfoDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PatientInfoDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientInfoResponseImplCopyWith<$Res>
    implements $PatientInfoResponseCopyWith<$Res> {
  factory _$$PatientInfoResponseImplCopyWith(_$PatientInfoResponseImpl value,
          $Res Function(_$PatientInfoResponseImpl) then) =
      __$$PatientInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      PatientInfoData? data,
      String? message,
      bool? blocked,
      bool? popup});

  @override
  $PatientInfoDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PatientInfoResponseImplCopyWithImpl<$Res>
    extends _$PatientInfoResponseCopyWithImpl<$Res, _$PatientInfoResponseImpl>
    implements _$$PatientInfoResponseImplCopyWith<$Res> {
  __$$PatientInfoResponseImplCopyWithImpl(_$PatientInfoResponseImpl _value,
      $Res Function(_$PatientInfoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? blocked = freezed,
    Object? popup = freezed,
  }) {
    return _then(_$PatientInfoResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PatientInfoData?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      blocked: freezed == blocked
          ? _value.blocked
          : blocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      popup: freezed == popup
          ? _value.popup
          : popup // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientInfoResponseImpl implements _PatientInfoResponse {
  const _$PatientInfoResponseImpl(
      {this.status, this.data, this.message, this.blocked, this.popup});

  factory _$PatientInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientInfoResponseImplFromJson(json);

  @override
  final String? status;
  @override
  final PatientInfoData? data;
  @override
  final String? message;
  @override
  final bool? blocked;
  @override
  final bool? popup;

  @override
  String toString() {
    return 'PatientInfoResponse(status: $status, data: $data, message: $message, blocked: $blocked, popup: $popup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientInfoResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.popup, popup) || other.popup == popup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, data, message, blocked, popup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientInfoResponseImplCopyWith<_$PatientInfoResponseImpl> get copyWith =>
      __$$PatientInfoResponseImplCopyWithImpl<_$PatientInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _PatientInfoResponse implements PatientInfoResponse {
  const factory _PatientInfoResponse(
      {final String? status,
      final PatientInfoData? data,
      final String? message,
      final bool? blocked,
      final bool? popup}) = _$PatientInfoResponseImpl;

  factory _PatientInfoResponse.fromJson(Map<String, dynamic> json) =
      _$PatientInfoResponseImpl.fromJson;

  @override
  String? get status;
  @override
  PatientInfoData? get data;
  @override
  String? get message;
  @override
  bool? get blocked;
  @override
  bool? get popup;
  @override
  @JsonKey(ignore: true)
  _$$PatientInfoResponseImplCopyWith<_$PatientInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PatientInfoData _$PatientInfoDataFromJson(Map<String, dynamic> json) {
  return _PatientInfoData.fromJson(json);
}

/// @nodoc
mixin _$PatientInfoData {
  int? get id => throw _privateConstructorUsedError;
  String? get pin => throw _privateConstructorUsedError;
  int? get organisationId => throw _privateConstructorUsedError;
  bool? get pripisan => throw _privateConstructorUsedError;
  String? get organisationNameCode => throw _privateConstructorUsedError;
  String? get organisationPhone => throw _privateConstructorUsedError;
  String? get parentOrganisationNameCode => throw _privateConstructorUsedError;
  String? get parentOrganisationPhone => throw _privateConstructorUsedError;
  String? get oms => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientInfoDataCopyWith<PatientInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientInfoDataCopyWith<$Res> {
  factory $PatientInfoDataCopyWith(
          PatientInfoData value, $Res Function(PatientInfoData) then) =
      _$PatientInfoDataCopyWithImpl<$Res, PatientInfoData>;
  @useResult
  $Res call(
      {int? id,
      String? pin,
      int? organisationId,
      bool? pripisan,
      String? organisationNameCode,
      String? organisationPhone,
      String? parentOrganisationNameCode,
      String? parentOrganisationPhone,
      String? oms,
      String? errorMessage});
}

/// @nodoc
class _$PatientInfoDataCopyWithImpl<$Res, $Val extends PatientInfoData>
    implements $PatientInfoDataCopyWith<$Res> {
  _$PatientInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pin = freezed,
    Object? organisationId = freezed,
    Object? pripisan = freezed,
    Object? organisationNameCode = freezed,
    Object? organisationPhone = freezed,
    Object? parentOrganisationNameCode = freezed,
    Object? parentOrganisationPhone = freezed,
    Object? oms = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      organisationId: freezed == organisationId
          ? _value.organisationId
          : organisationId // ignore: cast_nullable_to_non_nullable
              as int?,
      pripisan: freezed == pripisan
          ? _value.pripisan
          : pripisan // ignore: cast_nullable_to_non_nullable
              as bool?,
      organisationNameCode: freezed == organisationNameCode
          ? _value.organisationNameCode
          : organisationNameCode // ignore: cast_nullable_to_non_nullable
              as String?,
      organisationPhone: freezed == organisationPhone
          ? _value.organisationPhone
          : organisationPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      parentOrganisationNameCode: freezed == parentOrganisationNameCode
          ? _value.parentOrganisationNameCode
          : parentOrganisationNameCode // ignore: cast_nullable_to_non_nullable
              as String?,
      parentOrganisationPhone: freezed == parentOrganisationPhone
          ? _value.parentOrganisationPhone
          : parentOrganisationPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      oms: freezed == oms
          ? _value.oms
          : oms // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientInfoDataImplCopyWith<$Res>
    implements $PatientInfoDataCopyWith<$Res> {
  factory _$$PatientInfoDataImplCopyWith(_$PatientInfoDataImpl value,
          $Res Function(_$PatientInfoDataImpl) then) =
      __$$PatientInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? pin,
      int? organisationId,
      bool? pripisan,
      String? organisationNameCode,
      String? organisationPhone,
      String? parentOrganisationNameCode,
      String? parentOrganisationPhone,
      String? oms,
      String? errorMessage});
}

/// @nodoc
class __$$PatientInfoDataImplCopyWithImpl<$Res>
    extends _$PatientInfoDataCopyWithImpl<$Res, _$PatientInfoDataImpl>
    implements _$$PatientInfoDataImplCopyWith<$Res> {
  __$$PatientInfoDataImplCopyWithImpl(
      _$PatientInfoDataImpl _value, $Res Function(_$PatientInfoDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pin = freezed,
    Object? organisationId = freezed,
    Object? pripisan = freezed,
    Object? organisationNameCode = freezed,
    Object? organisationPhone = freezed,
    Object? parentOrganisationNameCode = freezed,
    Object? parentOrganisationPhone = freezed,
    Object? oms = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PatientInfoDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      organisationId: freezed == organisationId
          ? _value.organisationId
          : organisationId // ignore: cast_nullable_to_non_nullable
              as int?,
      pripisan: freezed == pripisan
          ? _value.pripisan
          : pripisan // ignore: cast_nullable_to_non_nullable
              as bool?,
      organisationNameCode: freezed == organisationNameCode
          ? _value.organisationNameCode
          : organisationNameCode // ignore: cast_nullable_to_non_nullable
              as String?,
      organisationPhone: freezed == organisationPhone
          ? _value.organisationPhone
          : organisationPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      parentOrganisationNameCode: freezed == parentOrganisationNameCode
          ? _value.parentOrganisationNameCode
          : parentOrganisationNameCode // ignore: cast_nullable_to_non_nullable
              as String?,
      parentOrganisationPhone: freezed == parentOrganisationPhone
          ? _value.parentOrganisationPhone
          : parentOrganisationPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      oms: freezed == oms
          ? _value.oms
          : oms // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientInfoDataImpl implements _PatientInfoData {
  const _$PatientInfoDataImpl(
      {this.id,
      this.pin,
      this.organisationId,
      this.pripisan,
      this.organisationNameCode,
      this.organisationPhone,
      this.parentOrganisationNameCode,
      this.parentOrganisationPhone,
      this.oms,
      this.errorMessage});

  factory _$PatientInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientInfoDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? pin;
  @override
  final int? organisationId;
  @override
  final bool? pripisan;
  @override
  final String? organisationNameCode;
  @override
  final String? organisationPhone;
  @override
  final String? parentOrganisationNameCode;
  @override
  final String? parentOrganisationPhone;
  @override
  final String? oms;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PatientInfoData(id: $id, pin: $pin, organisationId: $organisationId, pripisan: $pripisan, organisationNameCode: $organisationNameCode, organisationPhone: $organisationPhone, parentOrganisationNameCode: $parentOrganisationNameCode, parentOrganisationPhone: $parentOrganisationPhone, oms: $oms, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientInfoDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.organisationId, organisationId) ||
                other.organisationId == organisationId) &&
            (identical(other.pripisan, pripisan) ||
                other.pripisan == pripisan) &&
            (identical(other.organisationNameCode, organisationNameCode) ||
                other.organisationNameCode == organisationNameCode) &&
            (identical(other.organisationPhone, organisationPhone) ||
                other.organisationPhone == organisationPhone) &&
            (identical(other.parentOrganisationNameCode,
                    parentOrganisationNameCode) ||
                other.parentOrganisationNameCode ==
                    parentOrganisationNameCode) &&
            (identical(
                    other.parentOrganisationPhone, parentOrganisationPhone) ||
                other.parentOrganisationPhone == parentOrganisationPhone) &&
            (identical(other.oms, oms) || other.oms == oms) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      pin,
      organisationId,
      pripisan,
      organisationNameCode,
      organisationPhone,
      parentOrganisationNameCode,
      parentOrganisationPhone,
      oms,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientInfoDataImplCopyWith<_$PatientInfoDataImpl> get copyWith =>
      __$$PatientInfoDataImplCopyWithImpl<_$PatientInfoDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientInfoDataImplToJson(
      this,
    );
  }
}

abstract class _PatientInfoData implements PatientInfoData {
  const factory _PatientInfoData(
      {final int? id,
      final String? pin,
      final int? organisationId,
      final bool? pripisan,
      final String? organisationNameCode,
      final String? organisationPhone,
      final String? parentOrganisationNameCode,
      final String? parentOrganisationPhone,
      final String? oms,
      final String? errorMessage}) = _$PatientInfoDataImpl;

  factory _PatientInfoData.fromJson(Map<String, dynamic> json) =
      _$PatientInfoDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get pin;
  @override
  int? get organisationId;
  @override
  bool? get pripisan;
  @override
  String? get organisationNameCode;
  @override
  String? get organisationPhone;
  @override
  String? get parentOrganisationNameCode;
  @override
  String? get parentOrganisationPhone;
  @override
  String? get oms;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$PatientInfoDataImplCopyWith<_$PatientInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
