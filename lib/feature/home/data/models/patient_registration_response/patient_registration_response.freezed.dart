// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient_registration_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PatientRegistrationResponse _$PatientRegistrationResponseFromJson(
    Map<String, dynamic> json) {
  return _PatientRegistrationResponse.fromJson(json);
}

/// @nodoc
mixin _$PatientRegistrationResponse {
  String? get status => throw _privateConstructorUsedError;
  PatientRegistrationData? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get blocked => throw _privateConstructorUsedError;
  bool? get popup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientRegistrationResponseCopyWith<PatientRegistrationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientRegistrationResponseCopyWith<$Res> {
  factory $PatientRegistrationResponseCopyWith(
          PatientRegistrationResponse value,
          $Res Function(PatientRegistrationResponse) then) =
      _$PatientRegistrationResponseCopyWithImpl<$Res,
          PatientRegistrationResponse>;
  @useResult
  $Res call(
      {String? status,
      PatientRegistrationData? data,
      String? message,
      bool? blocked,
      bool? popup});

  $PatientRegistrationDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PatientRegistrationResponseCopyWithImpl<$Res,
        $Val extends PatientRegistrationResponse>
    implements $PatientRegistrationResponseCopyWith<$Res> {
  _$PatientRegistrationResponseCopyWithImpl(this._value, this._then);

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
              as PatientRegistrationData?,
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
  $PatientRegistrationDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PatientRegistrationDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PatientRegistrationResponseImplCopyWith<$Res>
    implements $PatientRegistrationResponseCopyWith<$Res> {
  factory _$$PatientRegistrationResponseImplCopyWith(
          _$PatientRegistrationResponseImpl value,
          $Res Function(_$PatientRegistrationResponseImpl) then) =
      __$$PatientRegistrationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      PatientRegistrationData? data,
      String? message,
      bool? blocked,
      bool? popup});

  @override
  $PatientRegistrationDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PatientRegistrationResponseImplCopyWithImpl<$Res>
    extends _$PatientRegistrationResponseCopyWithImpl<$Res,
        _$PatientRegistrationResponseImpl>
    implements _$$PatientRegistrationResponseImplCopyWith<$Res> {
  __$$PatientRegistrationResponseImplCopyWithImpl(
      _$PatientRegistrationResponseImpl _value,
      $Res Function(_$PatientRegistrationResponseImpl) _then)
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
    return _then(_$PatientRegistrationResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PatientRegistrationData?,
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
class _$PatientRegistrationResponseImpl
    implements _PatientRegistrationResponse {
  const _$PatientRegistrationResponseImpl(
      {this.status, this.data, this.message, this.blocked, this.popup});

  factory _$PatientRegistrationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PatientRegistrationResponseImplFromJson(json);

  @override
  final String? status;
  @override
  final PatientRegistrationData? data;
  @override
  final String? message;
  @override
  final bool? blocked;
  @override
  final bool? popup;

  @override
  String toString() {
    return 'PatientRegistrationResponse(status: $status, data: $data, message: $message, blocked: $blocked, popup: $popup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientRegistrationResponseImpl &&
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
  _$$PatientRegistrationResponseImplCopyWith<_$PatientRegistrationResponseImpl>
      get copyWith => __$$PatientRegistrationResponseImplCopyWithImpl<
          _$PatientRegistrationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientRegistrationResponseImplToJson(
      this,
    );
  }
}

abstract class _PatientRegistrationResponse
    implements PatientRegistrationResponse {
  const factory _PatientRegistrationResponse(
      {final String? status,
      final PatientRegistrationData? data,
      final String? message,
      final bool? blocked,
      final bool? popup}) = _$PatientRegistrationResponseImpl;

  factory _PatientRegistrationResponse.fromJson(Map<String, dynamic> json) =
      _$PatientRegistrationResponseImpl.fromJson;

  @override
  String? get status;
  @override
  PatientRegistrationData? get data;
  @override
  String? get message;
  @override
  bool? get blocked;
  @override
  bool? get popup;
  @override
  @JsonKey(ignore: true)
  _$$PatientRegistrationResponseImplCopyWith<_$PatientRegistrationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ListPatientRegistrationResponse _$ListPatientRegistrationResponseFromJson(
    Map<String, dynamic> json) {
  return _ListPatientRegistrationResponse.fromJson(json);
}

/// @nodoc
mixin _$ListPatientRegistrationResponse {
  String? get status => throw _privateConstructorUsedError;
  List<PatientRegistrationData>? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get blocked => throw _privateConstructorUsedError;
  bool? get popup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListPatientRegistrationResponseCopyWith<ListPatientRegistrationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListPatientRegistrationResponseCopyWith<$Res> {
  factory $ListPatientRegistrationResponseCopyWith(
          ListPatientRegistrationResponse value,
          $Res Function(ListPatientRegistrationResponse) then) =
      _$ListPatientRegistrationResponseCopyWithImpl<$Res,
          ListPatientRegistrationResponse>;
  @useResult
  $Res call(
      {String? status,
      List<PatientRegistrationData>? data,
      String? message,
      bool? blocked,
      bool? popup});
}

/// @nodoc
class _$ListPatientRegistrationResponseCopyWithImpl<$Res,
        $Val extends ListPatientRegistrationResponse>
    implements $ListPatientRegistrationResponseCopyWith<$Res> {
  _$ListPatientRegistrationResponseCopyWithImpl(this._value, this._then);

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
              as List<PatientRegistrationData>?,
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
}

/// @nodoc
abstract class _$$ListPatientRegistrationResponseImplCopyWith<$Res>
    implements $ListPatientRegistrationResponseCopyWith<$Res> {
  factory _$$ListPatientRegistrationResponseImplCopyWith(
          _$ListPatientRegistrationResponseImpl value,
          $Res Function(_$ListPatientRegistrationResponseImpl) then) =
      __$$ListPatientRegistrationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      List<PatientRegistrationData>? data,
      String? message,
      bool? blocked,
      bool? popup});
}

/// @nodoc
class __$$ListPatientRegistrationResponseImplCopyWithImpl<$Res>
    extends _$ListPatientRegistrationResponseCopyWithImpl<$Res,
        _$ListPatientRegistrationResponseImpl>
    implements _$$ListPatientRegistrationResponseImplCopyWith<$Res> {
  __$$ListPatientRegistrationResponseImplCopyWithImpl(
      _$ListPatientRegistrationResponseImpl _value,
      $Res Function(_$ListPatientRegistrationResponseImpl) _then)
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
    return _then(_$ListPatientRegistrationResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PatientRegistrationData>?,
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
class _$ListPatientRegistrationResponseImpl
    implements _ListPatientRegistrationResponse {
  const _$ListPatientRegistrationResponseImpl(
      {this.status,
      final List<PatientRegistrationData>? data,
      this.message,
      this.blocked,
      this.popup})
      : _data = data;

  factory _$ListPatientRegistrationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ListPatientRegistrationResponseImplFromJson(json);

  @override
  final String? status;
  final List<PatientRegistrationData>? _data;
  @override
  List<PatientRegistrationData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? message;
  @override
  final bool? blocked;
  @override
  final bool? popup;

  @override
  String toString() {
    return 'ListPatientRegistrationResponse(status: $status, data: $data, message: $message, blocked: $blocked, popup: $popup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListPatientRegistrationResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.blocked, blocked) || other.blocked == blocked) &&
            (identical(other.popup, popup) || other.popup == popup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_data), message, blocked, popup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListPatientRegistrationResponseImplCopyWith<
          _$ListPatientRegistrationResponseImpl>
      get copyWith => __$$ListPatientRegistrationResponseImplCopyWithImpl<
          _$ListPatientRegistrationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListPatientRegistrationResponseImplToJson(
      this,
    );
  }
}

abstract class _ListPatientRegistrationResponse
    implements ListPatientRegistrationResponse {
  const factory _ListPatientRegistrationResponse(
      {final String? status,
      final List<PatientRegistrationData>? data,
      final String? message,
      final bool? blocked,
      final bool? popup}) = _$ListPatientRegistrationResponseImpl;

  factory _ListPatientRegistrationResponse.fromJson(Map<String, dynamic> json) =
      _$ListPatientRegistrationResponseImpl.fromJson;

  @override
  String? get status;
  @override
  List<PatientRegistrationData>? get data;
  @override
  String? get message;
  @override
  bool? get blocked;
  @override
  bool? get popup;
  @override
  @JsonKey(ignore: true)
  _$$ListPatientRegistrationResponseImplCopyWith<
          _$ListPatientRegistrationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PatientRegistrationData _$PatientRegistrationDataFromJson(
    Map<String, dynamic> json) {
  return _PatientRegistrationData.fromJson(json);
}

/// @nodoc
mixin _$PatientRegistrationData {
  String? get id => throw _privateConstructorUsedError;
  String? get ozName => throw _privateConstructorUsedError;
  String? get ozParentName => throw _privateConstructorUsedError;
  String? get ozAdress => throw _privateConstructorUsedError;
  String? get doctorName => throw _privateConstructorUsedError;
  String? get doctorSpecialnost => throw _privateConstructorUsedError;
  String? get etajCabinet => throw _privateConstructorUsedError;
  String? get dataVremya => throw _privateConstructorUsedError;
  @JsonKey(name: 'patientFIO')
  String? get patientFio => throw _privateConstructorUsedError;
  @JsonKey(name: 'statusOMS')
  String? get statusOms => throw _privateConstructorUsedError;
  String? get pin => throw _privateConstructorUsedError;
  String? get dataCreate => throw _privateConstructorUsedError;
  bool? get pripiska => throw _privateConstructorUsedError;
  @JsonKey(name: 'byteQR')
  String? get byteQr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientRegistrationDataCopyWith<PatientRegistrationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientRegistrationDataCopyWith<$Res> {
  factory $PatientRegistrationDataCopyWith(PatientRegistrationData value,
          $Res Function(PatientRegistrationData) then) =
      _$PatientRegistrationDataCopyWithImpl<$Res, PatientRegistrationData>;
  @useResult
  $Res call(
      {String? id,
      String? ozName,
      String? ozParentName,
      String? ozAdress,
      String? doctorName,
      String? doctorSpecialnost,
      String? etajCabinet,
      String? dataVremya,
      @JsonKey(name: 'patientFIO') String? patientFio,
      @JsonKey(name: 'statusOMS') String? statusOms,
      String? pin,
      String? dataCreate,
      bool? pripiska,
      @JsonKey(name: 'byteQR') String? byteQr});
}

/// @nodoc
class _$PatientRegistrationDataCopyWithImpl<$Res,
        $Val extends PatientRegistrationData>
    implements $PatientRegistrationDataCopyWith<$Res> {
  _$PatientRegistrationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ozName = freezed,
    Object? ozParentName = freezed,
    Object? ozAdress = freezed,
    Object? doctorName = freezed,
    Object? doctorSpecialnost = freezed,
    Object? etajCabinet = freezed,
    Object? dataVremya = freezed,
    Object? patientFio = freezed,
    Object? statusOms = freezed,
    Object? pin = freezed,
    Object? dataCreate = freezed,
    Object? pripiska = freezed,
    Object? byteQr = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ozName: freezed == ozName
          ? _value.ozName
          : ozName // ignore: cast_nullable_to_non_nullable
              as String?,
      ozParentName: freezed == ozParentName
          ? _value.ozParentName
          : ozParentName // ignore: cast_nullable_to_non_nullable
              as String?,
      ozAdress: freezed == ozAdress
          ? _value.ozAdress
          : ozAdress // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorSpecialnost: freezed == doctorSpecialnost
          ? _value.doctorSpecialnost
          : doctorSpecialnost // ignore: cast_nullable_to_non_nullable
              as String?,
      etajCabinet: freezed == etajCabinet
          ? _value.etajCabinet
          : etajCabinet // ignore: cast_nullable_to_non_nullable
              as String?,
      dataVremya: freezed == dataVremya
          ? _value.dataVremya
          : dataVremya // ignore: cast_nullable_to_non_nullable
              as String?,
      patientFio: freezed == patientFio
          ? _value.patientFio
          : patientFio // ignore: cast_nullable_to_non_nullable
              as String?,
      statusOms: freezed == statusOms
          ? _value.statusOms
          : statusOms // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      dataCreate: freezed == dataCreate
          ? _value.dataCreate
          : dataCreate // ignore: cast_nullable_to_non_nullable
              as String?,
      pripiska: freezed == pripiska
          ? _value.pripiska
          : pripiska // ignore: cast_nullable_to_non_nullable
              as bool?,
      byteQr: freezed == byteQr
          ? _value.byteQr
          : byteQr // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientRegistrationDataImplCopyWith<$Res>
    implements $PatientRegistrationDataCopyWith<$Res> {
  factory _$$PatientRegistrationDataImplCopyWith(
          _$PatientRegistrationDataImpl value,
          $Res Function(_$PatientRegistrationDataImpl) then) =
      __$$PatientRegistrationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? ozName,
      String? ozParentName,
      String? ozAdress,
      String? doctorName,
      String? doctorSpecialnost,
      String? etajCabinet,
      String? dataVremya,
      @JsonKey(name: 'patientFIO') String? patientFio,
      @JsonKey(name: 'statusOMS') String? statusOms,
      String? pin,
      String? dataCreate,
      bool? pripiska,
      @JsonKey(name: 'byteQR') String? byteQr});
}

/// @nodoc
class __$$PatientRegistrationDataImplCopyWithImpl<$Res>
    extends _$PatientRegistrationDataCopyWithImpl<$Res,
        _$PatientRegistrationDataImpl>
    implements _$$PatientRegistrationDataImplCopyWith<$Res> {
  __$$PatientRegistrationDataImplCopyWithImpl(
      _$PatientRegistrationDataImpl _value,
      $Res Function(_$PatientRegistrationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? ozName = freezed,
    Object? ozParentName = freezed,
    Object? ozAdress = freezed,
    Object? doctorName = freezed,
    Object? doctorSpecialnost = freezed,
    Object? etajCabinet = freezed,
    Object? dataVremya = freezed,
    Object? patientFio = freezed,
    Object? statusOms = freezed,
    Object? pin = freezed,
    Object? dataCreate = freezed,
    Object? pripiska = freezed,
    Object? byteQr = freezed,
  }) {
    return _then(_$PatientRegistrationDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      ozName: freezed == ozName
          ? _value.ozName
          : ozName // ignore: cast_nullable_to_non_nullable
              as String?,
      ozParentName: freezed == ozParentName
          ? _value.ozParentName
          : ozParentName // ignore: cast_nullable_to_non_nullable
              as String?,
      ozAdress: freezed == ozAdress
          ? _value.ozAdress
          : ozAdress // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorName: freezed == doctorName
          ? _value.doctorName
          : doctorName // ignore: cast_nullable_to_non_nullable
              as String?,
      doctorSpecialnost: freezed == doctorSpecialnost
          ? _value.doctorSpecialnost
          : doctorSpecialnost // ignore: cast_nullable_to_non_nullable
              as String?,
      etajCabinet: freezed == etajCabinet
          ? _value.etajCabinet
          : etajCabinet // ignore: cast_nullable_to_non_nullable
              as String?,
      dataVremya: freezed == dataVremya
          ? _value.dataVremya
          : dataVremya // ignore: cast_nullable_to_non_nullable
              as String?,
      patientFio: freezed == patientFio
          ? _value.patientFio
          : patientFio // ignore: cast_nullable_to_non_nullable
              as String?,
      statusOms: freezed == statusOms
          ? _value.statusOms
          : statusOms // ignore: cast_nullable_to_non_nullable
              as String?,
      pin: freezed == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String?,
      dataCreate: freezed == dataCreate
          ? _value.dataCreate
          : dataCreate // ignore: cast_nullable_to_non_nullable
              as String?,
      pripiska: freezed == pripiska
          ? _value.pripiska
          : pripiska // ignore: cast_nullable_to_non_nullable
              as bool?,
      byteQr: freezed == byteQr
          ? _value.byteQr
          : byteQr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientRegistrationDataImpl implements _PatientRegistrationData {
  const _$PatientRegistrationDataImpl(
      {this.id,
      this.ozName,
      this.ozParentName,
      this.ozAdress,
      this.doctorName,
      this.doctorSpecialnost,
      this.etajCabinet,
      this.dataVremya,
      @JsonKey(name: 'patientFIO') this.patientFio,
      @JsonKey(name: 'statusOMS') this.statusOms,
      this.pin,
      this.dataCreate,
      this.pripiska,
      @JsonKey(name: 'byteQR') this.byteQr});

  factory _$PatientRegistrationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientRegistrationDataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? ozName;
  @override
  final String? ozParentName;
  @override
  final String? ozAdress;
  @override
  final String? doctorName;
  @override
  final String? doctorSpecialnost;
  @override
  final String? etajCabinet;
  @override
  final String? dataVremya;
  @override
  @JsonKey(name: 'patientFIO')
  final String? patientFio;
  @override
  @JsonKey(name: 'statusOMS')
  final String? statusOms;
  @override
  final String? pin;
  @override
  final String? dataCreate;
  @override
  final bool? pripiska;
  @override
  @JsonKey(name: 'byteQR')
  final String? byteQr;

  @override
  String toString() {
    return 'PatientRegistrationData(id: $id, ozName: $ozName, ozParentName: $ozParentName, ozAdress: $ozAdress, doctorName: $doctorName, doctorSpecialnost: $doctorSpecialnost, etajCabinet: $etajCabinet, dataVremya: $dataVremya, patientFio: $patientFio, statusOms: $statusOms, pin: $pin, dataCreate: $dataCreate, pripiska: $pripiska, byteQr: $byteQr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientRegistrationDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ozName, ozName) || other.ozName == ozName) &&
            (identical(other.ozParentName, ozParentName) ||
                other.ozParentName == ozParentName) &&
            (identical(other.ozAdress, ozAdress) ||
                other.ozAdress == ozAdress) &&
            (identical(other.doctorName, doctorName) ||
                other.doctorName == doctorName) &&
            (identical(other.doctorSpecialnost, doctorSpecialnost) ||
                other.doctorSpecialnost == doctorSpecialnost) &&
            (identical(other.etajCabinet, etajCabinet) ||
                other.etajCabinet == etajCabinet) &&
            (identical(other.dataVremya, dataVremya) ||
                other.dataVremya == dataVremya) &&
            (identical(other.patientFio, patientFio) ||
                other.patientFio == patientFio) &&
            (identical(other.statusOms, statusOms) ||
                other.statusOms == statusOms) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.dataCreate, dataCreate) ||
                other.dataCreate == dataCreate) &&
            (identical(other.pripiska, pripiska) ||
                other.pripiska == pripiska) &&
            (identical(other.byteQr, byteQr) || other.byteQr == byteQr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      ozName,
      ozParentName,
      ozAdress,
      doctorName,
      doctorSpecialnost,
      etajCabinet,
      dataVremya,
      patientFio,
      statusOms,
      pin,
      dataCreate,
      pripiska,
      byteQr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientRegistrationDataImplCopyWith<_$PatientRegistrationDataImpl>
      get copyWith => __$$PatientRegistrationDataImplCopyWithImpl<
          _$PatientRegistrationDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientRegistrationDataImplToJson(
      this,
    );
  }
}

abstract class _PatientRegistrationData implements PatientRegistrationData {
  const factory _PatientRegistrationData(
          {final String? id,
          final String? ozName,
          final String? ozParentName,
          final String? ozAdress,
          final String? doctorName,
          final String? doctorSpecialnost,
          final String? etajCabinet,
          final String? dataVremya,
          @JsonKey(name: 'patientFIO') final String? patientFio,
          @JsonKey(name: 'statusOMS') final String? statusOms,
          final String? pin,
          final String? dataCreate,
          final bool? pripiska,
          @JsonKey(name: 'byteQR') final String? byteQr}) =
      _$PatientRegistrationDataImpl;

  factory _PatientRegistrationData.fromJson(Map<String, dynamic> json) =
      _$PatientRegistrationDataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get ozName;
  @override
  String? get ozParentName;
  @override
  String? get ozAdress;
  @override
  String? get doctorName;
  @override
  String? get doctorSpecialnost;
  @override
  String? get etajCabinet;
  @override
  String? get dataVremya;
  @override
  @JsonKey(name: 'patientFIO')
  String? get patientFio;
  @override
  @JsonKey(name: 'statusOMS')
  String? get statusOms;
  @override
  String? get pin;
  @override
  String? get dataCreate;
  @override
  bool? get pripiska;
  @override
  @JsonKey(name: 'byteQR')
  String? get byteQr;
  @override
  @JsonKey(ignore: true)
  _$$PatientRegistrationDataImplCopyWith<_$PatientRegistrationDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
