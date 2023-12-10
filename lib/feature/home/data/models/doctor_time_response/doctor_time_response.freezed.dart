// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_time_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoctorTimeResponse _$DoctorTimeResponseFromJson(Map<String, dynamic> json) {
  return _DoctorTimeResponse.fromJson(json);
}

/// @nodoc
mixin _$DoctorTimeResponse {
  String? get status => throw _privateConstructorUsedError;
  List<DoctorTimeData>? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get blocked => throw _privateConstructorUsedError;
  bool? get popup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorTimeResponseCopyWith<DoctorTimeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorTimeResponseCopyWith<$Res> {
  factory $DoctorTimeResponseCopyWith(
          DoctorTimeResponse value, $Res Function(DoctorTimeResponse) then) =
      _$DoctorTimeResponseCopyWithImpl<$Res, DoctorTimeResponse>;
  @useResult
  $Res call(
      {String? status,
      List<DoctorTimeData>? data,
      String? message,
      bool? blocked,
      bool? popup});
}

/// @nodoc
class _$DoctorTimeResponseCopyWithImpl<$Res, $Val extends DoctorTimeResponse>
    implements $DoctorTimeResponseCopyWith<$Res> {
  _$DoctorTimeResponseCopyWithImpl(this._value, this._then);

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
              as List<DoctorTimeData>?,
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
abstract class _$$DoctorTimeResponseImplCopyWith<$Res>
    implements $DoctorTimeResponseCopyWith<$Res> {
  factory _$$DoctorTimeResponseImplCopyWith(_$DoctorTimeResponseImpl value,
          $Res Function(_$DoctorTimeResponseImpl) then) =
      __$$DoctorTimeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      List<DoctorTimeData>? data,
      String? message,
      bool? blocked,
      bool? popup});
}

/// @nodoc
class __$$DoctorTimeResponseImplCopyWithImpl<$Res>
    extends _$DoctorTimeResponseCopyWithImpl<$Res, _$DoctorTimeResponseImpl>
    implements _$$DoctorTimeResponseImplCopyWith<$Res> {
  __$$DoctorTimeResponseImplCopyWithImpl(_$DoctorTimeResponseImpl _value,
      $Res Function(_$DoctorTimeResponseImpl) _then)
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
    return _then(_$DoctorTimeResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DoctorTimeData>?,
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
class _$DoctorTimeResponseImpl implements _DoctorTimeResponse {
  const _$DoctorTimeResponseImpl(
      {this.status,
      final List<DoctorTimeData>? data,
      this.message,
      this.blocked,
      this.popup})
      : _data = data;

  factory _$DoctorTimeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorTimeResponseImplFromJson(json);

  @override
  final String? status;
  final List<DoctorTimeData>? _data;
  @override
  List<DoctorTimeData>? get data {
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
    return 'DoctorTimeResponse(status: $status, data: $data, message: $message, blocked: $blocked, popup: $popup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorTimeResponseImpl &&
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
  _$$DoctorTimeResponseImplCopyWith<_$DoctorTimeResponseImpl> get copyWith =>
      __$$DoctorTimeResponseImplCopyWithImpl<_$DoctorTimeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorTimeResponseImplToJson(
      this,
    );
  }
}

abstract class _DoctorTimeResponse implements DoctorTimeResponse {
  const factory _DoctorTimeResponse(
      {final String? status,
      final List<DoctorTimeData>? data,
      final String? message,
      final bool? blocked,
      final bool? popup}) = _$DoctorTimeResponseImpl;

  factory _DoctorTimeResponse.fromJson(Map<String, dynamic> json) =
      _$DoctorTimeResponseImpl.fromJson;

  @override
  String? get status;
  @override
  List<DoctorTimeData>? get data;
  @override
  String? get message;
  @override
  bool? get blocked;
  @override
  bool? get popup;
  @override
  @JsonKey(ignore: true)
  _$$DoctorTimeResponseImplCopyWith<_$DoctorTimeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DoctorTimeData _$DoctorTimeDataFromJson(Map<String, dynamic> json) {
  return _DoctorTimeData.fromJson(json);
}

/// @nodoc
mixin _$DoctorTimeData {
  DateTime? get dateTime => throw _privateConstructorUsedError;
  bool? get available => throw _privateConstructorUsedError;
  int? get calendarRegistrationId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorTimeDataCopyWith<DoctorTimeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorTimeDataCopyWith<$Res> {
  factory $DoctorTimeDataCopyWith(
          DoctorTimeData value, $Res Function(DoctorTimeData) then) =
      _$DoctorTimeDataCopyWithImpl<$Res, DoctorTimeData>;
  @useResult
  $Res call({DateTime? dateTime, bool? available, int? calendarRegistrationId});
}

/// @nodoc
class _$DoctorTimeDataCopyWithImpl<$Res, $Val extends DoctorTimeData>
    implements $DoctorTimeDataCopyWith<$Res> {
  _$DoctorTimeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = freezed,
    Object? available = freezed,
    Object? calendarRegistrationId = freezed,
  }) {
    return _then(_value.copyWith(
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      calendarRegistrationId: freezed == calendarRegistrationId
          ? _value.calendarRegistrationId
          : calendarRegistrationId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorTimeDataImplCopyWith<$Res>
    implements $DoctorTimeDataCopyWith<$Res> {
  factory _$$DoctorTimeDataImplCopyWith(_$DoctorTimeDataImpl value,
          $Res Function(_$DoctorTimeDataImpl) then) =
      __$$DoctorTimeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? dateTime, bool? available, int? calendarRegistrationId});
}

/// @nodoc
class __$$DoctorTimeDataImplCopyWithImpl<$Res>
    extends _$DoctorTimeDataCopyWithImpl<$Res, _$DoctorTimeDataImpl>
    implements _$$DoctorTimeDataImplCopyWith<$Res> {
  __$$DoctorTimeDataImplCopyWithImpl(
      _$DoctorTimeDataImpl _value, $Res Function(_$DoctorTimeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = freezed,
    Object? available = freezed,
    Object? calendarRegistrationId = freezed,
  }) {
    return _then(_$DoctorTimeDataImpl(
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
      calendarRegistrationId: freezed == calendarRegistrationId
          ? _value.calendarRegistrationId
          : calendarRegistrationId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorTimeDataImpl implements _DoctorTimeData {
  const _$DoctorTimeDataImpl(
      {this.dateTime, this.available, this.calendarRegistrationId});

  factory _$DoctorTimeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorTimeDataImplFromJson(json);

  @override
  final DateTime? dateTime;
  @override
  final bool? available;
  @override
  final int? calendarRegistrationId;

  @override
  String toString() {
    return 'DoctorTimeData(dateTime: $dateTime, available: $available, calendarRegistrationId: $calendarRegistrationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorTimeDataImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.calendarRegistrationId, calendarRegistrationId) ||
                other.calendarRegistrationId == calendarRegistrationId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dateTime, available, calendarRegistrationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorTimeDataImplCopyWith<_$DoctorTimeDataImpl> get copyWith =>
      __$$DoctorTimeDataImplCopyWithImpl<_$DoctorTimeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorTimeDataImplToJson(
      this,
    );
  }
}

abstract class _DoctorTimeData implements DoctorTimeData {
  const factory _DoctorTimeData(
      {final DateTime? dateTime,
      final bool? available,
      final int? calendarRegistrationId}) = _$DoctorTimeDataImpl;

  factory _DoctorTimeData.fromJson(Map<String, dynamic> json) =
      _$DoctorTimeDataImpl.fromJson;

  @override
  DateTime? get dateTime;
  @override
  bool? get available;
  @override
  int? get calendarRegistrationId;
  @override
  @JsonKey(ignore: true)
  _$$DoctorTimeDataImplCopyWith<_$DoctorTimeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
