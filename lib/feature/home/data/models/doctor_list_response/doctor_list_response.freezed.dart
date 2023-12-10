// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctor_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoctorListResponse _$DoctorListResponseFromJson(Map<String, dynamic> json) {
  return _DoctorListResponse.fromJson(json);
}

/// @nodoc
mixin _$DoctorListResponse {
  String? get status => throw _privateConstructorUsedError;
  DoctorListData? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get blocked => throw _privateConstructorUsedError;
  bool? get popup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorListResponseCopyWith<DoctorListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorListResponseCopyWith<$Res> {
  factory $DoctorListResponseCopyWith(
          DoctorListResponse value, $Res Function(DoctorListResponse) then) =
      _$DoctorListResponseCopyWithImpl<$Res, DoctorListResponse>;
  @useResult
  $Res call(
      {String? status,
      DoctorListData? data,
      String? message,
      bool? blocked,
      bool? popup});

  $DoctorListDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DoctorListResponseCopyWithImpl<$Res, $Val extends DoctorListResponse>
    implements $DoctorListResponseCopyWith<$Res> {
  _$DoctorListResponseCopyWithImpl(this._value, this._then);

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
              as DoctorListData?,
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
  $DoctorListDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DoctorListDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DoctorListResponseImplCopyWith<$Res>
    implements $DoctorListResponseCopyWith<$Res> {
  factory _$$DoctorListResponseImplCopyWith(_$DoctorListResponseImpl value,
          $Res Function(_$DoctorListResponseImpl) then) =
      __$$DoctorListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      DoctorListData? data,
      String? message,
      bool? blocked,
      bool? popup});

  @override
  $DoctorListDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DoctorListResponseImplCopyWithImpl<$Res>
    extends _$DoctorListResponseCopyWithImpl<$Res, _$DoctorListResponseImpl>
    implements _$$DoctorListResponseImplCopyWith<$Res> {
  __$$DoctorListResponseImplCopyWithImpl(_$DoctorListResponseImpl _value,
      $Res Function(_$DoctorListResponseImpl) _then)
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
    return _then(_$DoctorListResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DoctorListData?,
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
class _$DoctorListResponseImpl implements _DoctorListResponse {
  const _$DoctorListResponseImpl(
      {this.status, this.data, this.message, this.blocked, this.popup});

  factory _$DoctorListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorListResponseImplFromJson(json);

  @override
  final String? status;
  @override
  final DoctorListData? data;
  @override
  final String? message;
  @override
  final bool? blocked;
  @override
  final bool? popup;

  @override
  String toString() {
    return 'DoctorListResponse(status: $status, data: $data, message: $message, blocked: $blocked, popup: $popup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorListResponseImpl &&
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
  _$$DoctorListResponseImplCopyWith<_$DoctorListResponseImpl> get copyWith =>
      __$$DoctorListResponseImplCopyWithImpl<_$DoctorListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorListResponseImplToJson(
      this,
    );
  }
}

abstract class _DoctorListResponse implements DoctorListResponse {
  const factory _DoctorListResponse(
      {final String? status,
      final DoctorListData? data,
      final String? message,
      final bool? blocked,
      final bool? popup}) = _$DoctorListResponseImpl;

  factory _DoctorListResponse.fromJson(Map<String, dynamic> json) =
      _$DoctorListResponseImpl.fromJson;

  @override
  String? get status;
  @override
  DoctorListData? get data;
  @override
  String? get message;
  @override
  bool? get blocked;
  @override
  bool? get popup;
  @override
  @JsonKey(ignore: true)
  _$$DoctorListResponseImplCopyWith<_$DoctorListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DoctorListData _$DoctorListDataFromJson(Map<String, dynamic> json) {
  return _DoctorListData.fromJson(json);
}

/// @nodoc
mixin _$DoctorListData {
  int? get currentPage => throw _privateConstructorUsedError;
  int? get pageSize => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalItems => throw _privateConstructorUsedError;
  List<SpecialistResult>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoctorListDataCopyWith<DoctorListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorListDataCopyWith<$Res> {
  factory $DoctorListDataCopyWith(
          DoctorListData value, $Res Function(DoctorListData) then) =
      _$DoctorListDataCopyWithImpl<$Res, DoctorListData>;
  @useResult
  $Res call(
      {int? currentPage,
      int? pageSize,
      int? totalPages,
      int? totalItems,
      List<SpecialistResult>? result});
}

/// @nodoc
class _$DoctorListDataCopyWithImpl<$Res, $Val extends DoctorListData>
    implements $DoctorListDataCopyWith<$Res> {
  _$DoctorListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? pageSize = freezed,
    Object? totalPages = freezed,
    Object? totalItems = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<SpecialistResult>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoctorListDataImplCopyWith<$Res>
    implements $DoctorListDataCopyWith<$Res> {
  factory _$$DoctorListDataImplCopyWith(_$DoctorListDataImpl value,
          $Res Function(_$DoctorListDataImpl) then) =
      __$$DoctorListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? currentPage,
      int? pageSize,
      int? totalPages,
      int? totalItems,
      List<SpecialistResult>? result});
}

/// @nodoc
class __$$DoctorListDataImplCopyWithImpl<$Res>
    extends _$DoctorListDataCopyWithImpl<$Res, _$DoctorListDataImpl>
    implements _$$DoctorListDataImplCopyWith<$Res> {
  __$$DoctorListDataImplCopyWithImpl(
      _$DoctorListDataImpl _value, $Res Function(_$DoctorListDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = freezed,
    Object? pageSize = freezed,
    Object? totalPages = freezed,
    Object? totalItems = freezed,
    Object? result = freezed,
  }) {
    return _then(_$DoctorListDataImpl(
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<SpecialistResult>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorListDataImpl implements _DoctorListData {
  const _$DoctorListDataImpl(
      {this.currentPage,
      this.pageSize,
      this.totalPages,
      this.totalItems,
      final List<SpecialistResult>? result})
      : _result = result;

  factory _$DoctorListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorListDataImplFromJson(json);

  @override
  final int? currentPage;
  @override
  final int? pageSize;
  @override
  final int? totalPages;
  @override
  final int? totalItems;
  final List<SpecialistResult>? _result;
  @override
  List<SpecialistResult>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DoctorListData(currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages, totalItems: $totalItems, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorListDataImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, pageSize,
      totalPages, totalItems, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorListDataImplCopyWith<_$DoctorListDataImpl> get copyWith =>
      __$$DoctorListDataImplCopyWithImpl<_$DoctorListDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorListDataImplToJson(
      this,
    );
  }
}

abstract class _DoctorListData implements DoctorListData {
  const factory _DoctorListData(
      {final int? currentPage,
      final int? pageSize,
      final int? totalPages,
      final int? totalItems,
      final List<SpecialistResult>? result}) = _$DoctorListDataImpl;

  factory _DoctorListData.fromJson(Map<String, dynamic> json) =
      _$DoctorListDataImpl.fromJson;

  @override
  int? get currentPage;
  @override
  int? get pageSize;
  @override
  int? get totalPages;
  @override
  int? get totalItems;
  @override
  List<SpecialistResult>? get result;
  @override
  @JsonKey(ignore: true)
  _$$DoctorListDataImplCopyWith<_$DoctorListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpecialistResult _$SpecialistResultFromJson(Map<String, dynamic> json) {
  return _SpecialistResult.fromJson(json);
}

/// @nodoc
mixin _$SpecialistResult {
  int? get id => throw _privateConstructorUsedError;
  String? get applicationUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'applicationUserFIO')
  String? get applicationUserFio => throw _privateConstructorUsedError;
  int? get organisationId => throw _privateConstructorUsedError;
  String? get organisationName => throw _privateConstructorUsedError;
  int? get dictDoljnostId => throw _privateConstructorUsedError;
  String? get dictDoljnostName => throw _privateConstructorUsedError;
  int? get typeDoctor => throw _privateConstructorUsedError;
  String? get etaj => throw _privateConstructorUsedError;
  String? get numberCabinet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecialistResultCopyWith<SpecialistResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialistResultCopyWith<$Res> {
  factory $SpecialistResultCopyWith(
          SpecialistResult value, $Res Function(SpecialistResult) then) =
      _$SpecialistResultCopyWithImpl<$Res, SpecialistResult>;
  @useResult
  $Res call(
      {int? id,
      String? applicationUserId,
      @JsonKey(name: 'applicationUserFIO') String? applicationUserFio,
      int? organisationId,
      String? organisationName,
      int? dictDoljnostId,
      String? dictDoljnostName,
      int? typeDoctor,
      String? etaj,
      String? numberCabinet});
}

/// @nodoc
class _$SpecialistResultCopyWithImpl<$Res, $Val extends SpecialistResult>
    implements $SpecialistResultCopyWith<$Res> {
  _$SpecialistResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? applicationUserId = freezed,
    Object? applicationUserFio = freezed,
    Object? organisationId = freezed,
    Object? organisationName = freezed,
    Object? dictDoljnostId = freezed,
    Object? dictDoljnostName = freezed,
    Object? typeDoctor = freezed,
    Object? etaj = freezed,
    Object? numberCabinet = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      applicationUserId: freezed == applicationUserId
          ? _value.applicationUserId
          : applicationUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationUserFio: freezed == applicationUserFio
          ? _value.applicationUserFio
          : applicationUserFio // ignore: cast_nullable_to_non_nullable
              as String?,
      organisationId: freezed == organisationId
          ? _value.organisationId
          : organisationId // ignore: cast_nullable_to_non_nullable
              as int?,
      organisationName: freezed == organisationName
          ? _value.organisationName
          : organisationName // ignore: cast_nullable_to_non_nullable
              as String?,
      dictDoljnostId: freezed == dictDoljnostId
          ? _value.dictDoljnostId
          : dictDoljnostId // ignore: cast_nullable_to_non_nullable
              as int?,
      dictDoljnostName: freezed == dictDoljnostName
          ? _value.dictDoljnostName
          : dictDoljnostName // ignore: cast_nullable_to_non_nullable
              as String?,
      typeDoctor: freezed == typeDoctor
          ? _value.typeDoctor
          : typeDoctor // ignore: cast_nullable_to_non_nullable
              as int?,
      etaj: freezed == etaj
          ? _value.etaj
          : etaj // ignore: cast_nullable_to_non_nullable
              as String?,
      numberCabinet: freezed == numberCabinet
          ? _value.numberCabinet
          : numberCabinet // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpecialistResultImplCopyWith<$Res>
    implements $SpecialistResultCopyWith<$Res> {
  factory _$$SpecialistResultImplCopyWith(_$SpecialistResultImpl value,
          $Res Function(_$SpecialistResultImpl) then) =
      __$$SpecialistResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? applicationUserId,
      @JsonKey(name: 'applicationUserFIO') String? applicationUserFio,
      int? organisationId,
      String? organisationName,
      int? dictDoljnostId,
      String? dictDoljnostName,
      int? typeDoctor,
      String? etaj,
      String? numberCabinet});
}

/// @nodoc
class __$$SpecialistResultImplCopyWithImpl<$Res>
    extends _$SpecialistResultCopyWithImpl<$Res, _$SpecialistResultImpl>
    implements _$$SpecialistResultImplCopyWith<$Res> {
  __$$SpecialistResultImplCopyWithImpl(_$SpecialistResultImpl _value,
      $Res Function(_$SpecialistResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? applicationUserId = freezed,
    Object? applicationUserFio = freezed,
    Object? organisationId = freezed,
    Object? organisationName = freezed,
    Object? dictDoljnostId = freezed,
    Object? dictDoljnostName = freezed,
    Object? typeDoctor = freezed,
    Object? etaj = freezed,
    Object? numberCabinet = freezed,
  }) {
    return _then(_$SpecialistResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      applicationUserId: freezed == applicationUserId
          ? _value.applicationUserId
          : applicationUserId // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationUserFio: freezed == applicationUserFio
          ? _value.applicationUserFio
          : applicationUserFio // ignore: cast_nullable_to_non_nullable
              as String?,
      organisationId: freezed == organisationId
          ? _value.organisationId
          : organisationId // ignore: cast_nullable_to_non_nullable
              as int?,
      organisationName: freezed == organisationName
          ? _value.organisationName
          : organisationName // ignore: cast_nullable_to_non_nullable
              as String?,
      dictDoljnostId: freezed == dictDoljnostId
          ? _value.dictDoljnostId
          : dictDoljnostId // ignore: cast_nullable_to_non_nullable
              as int?,
      dictDoljnostName: freezed == dictDoljnostName
          ? _value.dictDoljnostName
          : dictDoljnostName // ignore: cast_nullable_to_non_nullable
              as String?,
      typeDoctor: freezed == typeDoctor
          ? _value.typeDoctor
          : typeDoctor // ignore: cast_nullable_to_non_nullable
              as int?,
      etaj: freezed == etaj
          ? _value.etaj
          : etaj // ignore: cast_nullable_to_non_nullable
              as String?,
      numberCabinet: freezed == numberCabinet
          ? _value.numberCabinet
          : numberCabinet // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecialistResultImpl implements _SpecialistResult {
  const _$SpecialistResultImpl(
      {this.id,
      this.applicationUserId,
      @JsonKey(name: 'applicationUserFIO') this.applicationUserFio,
      this.organisationId,
      this.organisationName,
      this.dictDoljnostId,
      this.dictDoljnostName,
      this.typeDoctor,
      this.etaj,
      this.numberCabinet});

  factory _$SpecialistResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecialistResultImplFromJson(json);

  @override
  final int? id;
  @override
  final String? applicationUserId;
  @override
  @JsonKey(name: 'applicationUserFIO')
  final String? applicationUserFio;
  @override
  final int? organisationId;
  @override
  final String? organisationName;
  @override
  final int? dictDoljnostId;
  @override
  final String? dictDoljnostName;
  @override
  final int? typeDoctor;
  @override
  final String? etaj;
  @override
  final String? numberCabinet;

  @override
  String toString() {
    return 'SpecialistResult(id: $id, applicationUserId: $applicationUserId, applicationUserFio: $applicationUserFio, organisationId: $organisationId, organisationName: $organisationName, dictDoljnostId: $dictDoljnostId, dictDoljnostName: $dictDoljnostName, typeDoctor: $typeDoctor, etaj: $etaj, numberCabinet: $numberCabinet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialistResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.applicationUserId, applicationUserId) ||
                other.applicationUserId == applicationUserId) &&
            (identical(other.applicationUserFio, applicationUserFio) ||
                other.applicationUserFio == applicationUserFio) &&
            (identical(other.organisationId, organisationId) ||
                other.organisationId == organisationId) &&
            (identical(other.organisationName, organisationName) ||
                other.organisationName == organisationName) &&
            (identical(other.dictDoljnostId, dictDoljnostId) ||
                other.dictDoljnostId == dictDoljnostId) &&
            (identical(other.dictDoljnostName, dictDoljnostName) ||
                other.dictDoljnostName == dictDoljnostName) &&
            (identical(other.typeDoctor, typeDoctor) ||
                other.typeDoctor == typeDoctor) &&
            (identical(other.etaj, etaj) || other.etaj == etaj) &&
            (identical(other.numberCabinet, numberCabinet) ||
                other.numberCabinet == numberCabinet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      applicationUserId,
      applicationUserFio,
      organisationId,
      organisationName,
      dictDoljnostId,
      dictDoljnostName,
      typeDoctor,
      etaj,
      numberCabinet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialistResultImplCopyWith<_$SpecialistResultImpl> get copyWith =>
      __$$SpecialistResultImplCopyWithImpl<_$SpecialistResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecialistResultImplToJson(
      this,
    );
  }
}

abstract class _SpecialistResult implements SpecialistResult {
  const factory _SpecialistResult(
      {final int? id,
      final String? applicationUserId,
      @JsonKey(name: 'applicationUserFIO') final String? applicationUserFio,
      final int? organisationId,
      final String? organisationName,
      final int? dictDoljnostId,
      final String? dictDoljnostName,
      final int? typeDoctor,
      final String? etaj,
      final String? numberCabinet}) = _$SpecialistResultImpl;

  factory _SpecialistResult.fromJson(Map<String, dynamic> json) =
      _$SpecialistResultImpl.fromJson;

  @override
  int? get id;
  @override
  String? get applicationUserId;
  @override
  @JsonKey(name: 'applicationUserFIO')
  String? get applicationUserFio;
  @override
  int? get organisationId;
  @override
  String? get organisationName;
  @override
  int? get dictDoljnostId;
  @override
  String? get dictDoljnostName;
  @override
  int? get typeDoctor;
  @override
  String? get etaj;
  @override
  String? get numberCabinet;
  @override
  @JsonKey(ignore: true)
  _$$SpecialistResultImplCopyWith<_$SpecialistResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
