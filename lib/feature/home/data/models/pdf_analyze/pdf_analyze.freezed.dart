// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_analyze.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultDataResponse _$ResultDataResponseFromJson(Map<String, dynamic> json) {
  return _ResultDataResponse.fromJson(json);
}

/// @nodoc
mixin _$ResultDataResponse {
  String? get resultNumber => throw _privateConstructorUsedError;
  String? get dateOfResult => throw _privateConstructorUsedError;
  String? get timeOfResult => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultDataResponseCopyWith<ResultDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDataResponseCopyWith<$Res> {
  factory $ResultDataResponseCopyWith(
          ResultDataResponse value, $Res Function(ResultDataResponse) then) =
      _$ResultDataResponseCopyWithImpl<$Res, ResultDataResponse>;
  @useResult
  $Res call({String? resultNumber, String? dateOfResult, String? timeOfResult});
}

/// @nodoc
class _$ResultDataResponseCopyWithImpl<$Res, $Val extends ResultDataResponse>
    implements $ResultDataResponseCopyWith<$Res> {
  _$ResultDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultNumber = freezed,
    Object? dateOfResult = freezed,
    Object? timeOfResult = freezed,
  }) {
    return _then(_value.copyWith(
      resultNumber: freezed == resultNumber
          ? _value.resultNumber
          : resultNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfResult: freezed == dateOfResult
          ? _value.dateOfResult
          : dateOfResult // ignore: cast_nullable_to_non_nullable
              as String?,
      timeOfResult: freezed == timeOfResult
          ? _value.timeOfResult
          : timeOfResult // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultDataResponseImplCopyWith<$Res>
    implements $ResultDataResponseCopyWith<$Res> {
  factory _$$ResultDataResponseImplCopyWith(_$ResultDataResponseImpl value,
          $Res Function(_$ResultDataResponseImpl) then) =
      __$$ResultDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? resultNumber, String? dateOfResult, String? timeOfResult});
}

/// @nodoc
class __$$ResultDataResponseImplCopyWithImpl<$Res>
    extends _$ResultDataResponseCopyWithImpl<$Res, _$ResultDataResponseImpl>
    implements _$$ResultDataResponseImplCopyWith<$Res> {
  __$$ResultDataResponseImplCopyWithImpl(_$ResultDataResponseImpl _value,
      $Res Function(_$ResultDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resultNumber = freezed,
    Object? dateOfResult = freezed,
    Object? timeOfResult = freezed,
  }) {
    return _then(_$ResultDataResponseImpl(
      resultNumber: freezed == resultNumber
          ? _value.resultNumber
          : resultNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfResult: freezed == dateOfResult
          ? _value.dateOfResult
          : dateOfResult // ignore: cast_nullable_to_non_nullable
              as String?,
      timeOfResult: freezed == timeOfResult
          ? _value.timeOfResult
          : timeOfResult // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultDataResponseImpl implements _ResultDataResponse {
  const _$ResultDataResponseImpl(
      {this.resultNumber, this.dateOfResult, this.timeOfResult});

  factory _$ResultDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultDataResponseImplFromJson(json);

  @override
  final String? resultNumber;
  @override
  final String? dateOfResult;
  @override
  final String? timeOfResult;

  @override
  String toString() {
    return 'ResultDataResponse(resultNumber: $resultNumber, dateOfResult: $dateOfResult, timeOfResult: $timeOfResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDataResponseImpl &&
            (identical(other.resultNumber, resultNumber) ||
                other.resultNumber == resultNumber) &&
            (identical(other.dateOfResult, dateOfResult) ||
                other.dateOfResult == dateOfResult) &&
            (identical(other.timeOfResult, timeOfResult) ||
                other.timeOfResult == timeOfResult));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, resultNumber, dateOfResult, timeOfResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDataResponseImplCopyWith<_$ResultDataResponseImpl> get copyWith =>
      __$$ResultDataResponseImplCopyWithImpl<_$ResultDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultDataResponseImplToJson(
      this,
    );
  }
}

abstract class _ResultDataResponse implements ResultDataResponse {
  const factory _ResultDataResponse(
      {final String? resultNumber,
      final String? dateOfResult,
      final String? timeOfResult}) = _$ResultDataResponseImpl;

  factory _ResultDataResponse.fromJson(Map<String, dynamic> json) =
      _$ResultDataResponseImpl.fromJson;

  @override
  String? get resultNumber;
  @override
  String? get dateOfResult;
  @override
  String? get timeOfResult;
  @override
  @JsonKey(ignore: true)
  _$$ResultDataResponseImplCopyWith<_$ResultDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultNumberResponse _$ResultNumberResponseFromJson(Map<String, dynamic> json) {
  return _ResultNumberResponse.fromJson(json);
}

/// @nodoc
mixin _$ResultNumberResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get pdgFileCheque => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultNumberResponseCopyWith<ResultNumberResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultNumberResponseCopyWith<$Res> {
  factory $ResultNumberResponseCopyWith(ResultNumberResponse value,
          $Res Function(ResultNumberResponse) then) =
      _$ResultNumberResponseCopyWithImpl<$Res, ResultNumberResponse>;
  @useResult
  $Res call({int? id, String? pdgFileCheque});
}

/// @nodoc
class _$ResultNumberResponseCopyWithImpl<$Res,
        $Val extends ResultNumberResponse>
    implements $ResultNumberResponseCopyWith<$Res> {
  _$ResultNumberResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pdgFileCheque = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pdgFileCheque: freezed == pdgFileCheque
          ? _value.pdgFileCheque
          : pdgFileCheque // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultNumberResponseImplCopyWith<$Res>
    implements $ResultNumberResponseCopyWith<$Res> {
  factory _$$ResultNumberResponseImplCopyWith(_$ResultNumberResponseImpl value,
          $Res Function(_$ResultNumberResponseImpl) then) =
      __$$ResultNumberResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? pdgFileCheque});
}

/// @nodoc
class __$$ResultNumberResponseImplCopyWithImpl<$Res>
    extends _$ResultNumberResponseCopyWithImpl<$Res, _$ResultNumberResponseImpl>
    implements _$$ResultNumberResponseImplCopyWith<$Res> {
  __$$ResultNumberResponseImplCopyWithImpl(_$ResultNumberResponseImpl _value,
      $Res Function(_$ResultNumberResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pdgFileCheque = freezed,
  }) {
    return _then(_$ResultNumberResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pdgFileCheque: freezed == pdgFileCheque
          ? _value.pdgFileCheque
          : pdgFileCheque // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultNumberResponseImpl implements _ResultNumberResponse {
  const _$ResultNumberResponseImpl({this.id, this.pdgFileCheque});

  factory _$ResultNumberResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultNumberResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? pdgFileCheque;

  @override
  String toString() {
    return 'ResultNumberResponse(id: $id, pdgFileCheque: $pdgFileCheque)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultNumberResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pdgFileCheque, pdgFileCheque) ||
                other.pdgFileCheque == pdgFileCheque));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, pdgFileCheque);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultNumberResponseImplCopyWith<_$ResultNumberResponseImpl>
      get copyWith =>
          __$$ResultNumberResponseImplCopyWithImpl<_$ResultNumberResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultNumberResponseImplToJson(
      this,
    );
  }
}

abstract class _ResultNumberResponse implements ResultNumberResponse {
  const factory _ResultNumberResponse(
      {final int? id,
      final String? pdgFileCheque}) = _$ResultNumberResponseImpl;

  factory _ResultNumberResponse.fromJson(Map<String, dynamic> json) =
      _$ResultNumberResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get pdgFileCheque;
  @override
  @JsonKey(ignore: true)
  _$$ResultNumberResponseImplCopyWith<_$ResultNumberResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
