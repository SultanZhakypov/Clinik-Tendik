// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthRequest authRequest) signIn,
    required TResult Function(RegisterRequest registerRequest) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthRequest authRequest)? signIn,
    TResult? Function(RegisterRequest registerRequest)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthRequest authRequest)? signIn,
    TResult Function(RegisterRequest registerRequest)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthRequest authRequest});
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authRequest = null,
  }) {
    return _then(_$SignInImpl(
      null == authRequest
          ? _value.authRequest
          : authRequest // ignore: cast_nullable_to_non_nullable
              as AuthRequest,
    ));
  }
}

/// @nodoc

class _$SignInImpl implements _SignIn {
  const _$SignInImpl(this.authRequest);

  @override
  final AuthRequest authRequest;

  @override
  String toString() {
    return 'AuthEvent.signIn(authRequest: $authRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInImpl &&
            (identical(other.authRequest, authRequest) ||
                other.authRequest == authRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      __$$SignInImplCopyWithImpl<_$SignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthRequest authRequest) signIn,
    required TResult Function(RegisterRequest registerRequest) signUp,
  }) {
    return signIn(authRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthRequest authRequest)? signIn,
    TResult? Function(RegisterRequest registerRequest)? signUp,
  }) {
    return signIn?.call(authRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthRequest authRequest)? signIn,
    TResult Function(RegisterRequest registerRequest)? signUp,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(authRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthEvent {
  const factory _SignIn(final AuthRequest authRequest) = _$SignInImpl;

  AuthRequest get authRequest;
  @JsonKey(ignore: true)
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterRequest registerRequest});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerRequest = null,
  }) {
    return _then(_$SignUpImpl(
      null == registerRequest
          ? _value.registerRequest
          : registerRequest // ignore: cast_nullable_to_non_nullable
              as RegisterRequest,
    ));
  }
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  const _$SignUpImpl(this.registerRequest);

  @override
  final RegisterRequest registerRequest;

  @override
  String toString() {
    return 'AuthEvent.signUp(registerRequest: $registerRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.registerRequest, registerRequest) ||
                other.registerRequest == registerRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthRequest authRequest) signIn,
    required TResult Function(RegisterRequest registerRequest) signUp,
  }) {
    return signUp(registerRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthRequest authRequest)? signIn,
    TResult? Function(RegisterRequest registerRequest)? signUp,
  }) {
    return signUp?.call(registerRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthRequest authRequest)? signIn,
    TResult Function(RegisterRequest registerRequest)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(registerRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_SignUp value) signUp,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_SignUp value)? signUp,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignIn value)? signIn,
    TResult Function(_SignUp value)? signUp,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthEvent {
  const factory _SignUp(final RegisterRequest registerRequest) = _$SignUpImpl;

  RegisterRequest get registerRequest;
  @JsonKey(ignore: true)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isOverlay) loading,
    required TResult Function(dynamic error) error,
    required TResult Function(RegisterResponse data) successSignUp,
    required TResult Function(AuthResponse data) successSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? isOverlay)? loading,
    TResult? Function(dynamic error)? error,
    TResult? Function(RegisterResponse data)? successSignUp,
    TResult? Function(AuthResponse data)? successSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isOverlay)? loading,
    TResult Function(dynamic error)? error,
    TResult Function(RegisterResponse data)? successSignUp,
    TResult Function(AuthResponse data)? successSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessSignUp value) successSignUp,
    required TResult Function(_SuccessSignIn value) successSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessSignUp value)? successSignUp,
    TResult? Function(_SuccessSignIn value)? successSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessSignUp value)? successSignUp,
    TResult Function(_SuccessSignIn value)? successSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isOverlay) loading,
    required TResult Function(dynamic error) error,
    required TResult Function(RegisterResponse data) successSignUp,
    required TResult Function(AuthResponse data) successSignIn,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? isOverlay)? loading,
    TResult? Function(dynamic error)? error,
    TResult? Function(RegisterResponse data)? successSignUp,
    TResult? Function(AuthResponse data)? successSignIn,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isOverlay)? loading,
    TResult Function(dynamic error)? error,
    TResult Function(RegisterResponse data)? successSignUp,
    TResult Function(AuthResponse data)? successSignIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessSignUp value) successSignUp,
    required TResult Function(_SuccessSignIn value) successSignIn,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessSignUp value)? successSignUp,
    TResult? Function(_SuccessSignIn value)? successSignIn,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessSignUp value)? successSignUp,
    TResult Function(_SuccessSignIn value)? successSignIn,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? isOverlay});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOverlay = freezed,
  }) {
    return _then(_$LoadingImpl(
      isOverlay: freezed == isOverlay
          ? _value.isOverlay
          : isOverlay // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl({this.isOverlay});

  @override
  final bool? isOverlay;

  @override
  String toString() {
    return 'AuthState.loading(isOverlay: $isOverlay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.isOverlay, isOverlay) ||
                other.isOverlay == isOverlay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOverlay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isOverlay) loading,
    required TResult Function(dynamic error) error,
    required TResult Function(RegisterResponse data) successSignUp,
    required TResult Function(AuthResponse data) successSignIn,
  }) {
    return loading(isOverlay);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? isOverlay)? loading,
    TResult? Function(dynamic error)? error,
    TResult? Function(RegisterResponse data)? successSignUp,
    TResult? Function(AuthResponse data)? successSignIn,
  }) {
    return loading?.call(isOverlay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isOverlay)? loading,
    TResult Function(dynamic error)? error,
    TResult Function(RegisterResponse data)? successSignUp,
    TResult Function(AuthResponse data)? successSignIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isOverlay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessSignUp value) successSignUp,
    required TResult Function(_SuccessSignIn value) successSignIn,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessSignUp value)? successSignUp,
    TResult? Function(_SuccessSignIn value)? successSignIn,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessSignUp value)? successSignUp,
    TResult Function(_SuccessSignIn value)? successSignIn,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading({final bool? isOverlay}) = _$LoadingImpl;

  bool? get isOverlay;
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isOverlay) loading,
    required TResult Function(dynamic error) error,
    required TResult Function(RegisterResponse data) successSignUp,
    required TResult Function(AuthResponse data) successSignIn,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? isOverlay)? loading,
    TResult? Function(dynamic error)? error,
    TResult? Function(RegisterResponse data)? successSignUp,
    TResult? Function(AuthResponse data)? successSignIn,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isOverlay)? loading,
    TResult Function(dynamic error)? error,
    TResult Function(RegisterResponse data)? successSignUp,
    TResult Function(AuthResponse data)? successSignIn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessSignUp value) successSignUp,
    required TResult Function(_SuccessSignIn value) successSignIn,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessSignUp value)? successSignUp,
    TResult? Function(_SuccessSignIn value)? successSignIn,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessSignUp value)? successSignUp,
    TResult Function(_SuccessSignIn value)? successSignIn,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final dynamic error) = _$ErrorImpl;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessSignUpImplCopyWith<$Res> {
  factory _$$SuccessSignUpImplCopyWith(
          _$SuccessSignUpImpl value, $Res Function(_$SuccessSignUpImpl) then) =
      __$$SuccessSignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RegisterResponse data});
}

/// @nodoc
class __$$SuccessSignUpImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessSignUpImpl>
    implements _$$SuccessSignUpImplCopyWith<$Res> {
  __$$SuccessSignUpImplCopyWithImpl(
      _$SuccessSignUpImpl _value, $Res Function(_$SuccessSignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessSignUpImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterResponse,
    ));
  }
}

/// @nodoc

class _$SuccessSignUpImpl implements _SuccessSignUp {
  const _$SuccessSignUpImpl(this.data);

  @override
  final RegisterResponse data;

  @override
  String toString() {
    return 'AuthState.successSignUp(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSignUpImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSignUpImplCopyWith<_$SuccessSignUpImpl> get copyWith =>
      __$$SuccessSignUpImplCopyWithImpl<_$SuccessSignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isOverlay) loading,
    required TResult Function(dynamic error) error,
    required TResult Function(RegisterResponse data) successSignUp,
    required TResult Function(AuthResponse data) successSignIn,
  }) {
    return successSignUp(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? isOverlay)? loading,
    TResult? Function(dynamic error)? error,
    TResult? Function(RegisterResponse data)? successSignUp,
    TResult? Function(AuthResponse data)? successSignIn,
  }) {
    return successSignUp?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isOverlay)? loading,
    TResult Function(dynamic error)? error,
    TResult Function(RegisterResponse data)? successSignUp,
    TResult Function(AuthResponse data)? successSignIn,
    required TResult orElse(),
  }) {
    if (successSignUp != null) {
      return successSignUp(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessSignUp value) successSignUp,
    required TResult Function(_SuccessSignIn value) successSignIn,
  }) {
    return successSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessSignUp value)? successSignUp,
    TResult? Function(_SuccessSignIn value)? successSignIn,
  }) {
    return successSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessSignUp value)? successSignUp,
    TResult Function(_SuccessSignIn value)? successSignIn,
    required TResult orElse(),
  }) {
    if (successSignUp != null) {
      return successSignUp(this);
    }
    return orElse();
  }
}

abstract class _SuccessSignUp implements AuthState {
  const factory _SuccessSignUp(final RegisterResponse data) =
      _$SuccessSignUpImpl;

  RegisterResponse get data;
  @JsonKey(ignore: true)
  _$$SuccessSignUpImplCopyWith<_$SuccessSignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessSignInImplCopyWith<$Res> {
  factory _$$SuccessSignInImplCopyWith(
          _$SuccessSignInImpl value, $Res Function(_$SuccessSignInImpl) then) =
      __$$SuccessSignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResponse data});
}

/// @nodoc
class __$$SuccessSignInImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessSignInImpl>
    implements _$$SuccessSignInImplCopyWith<$Res> {
  __$$SuccessSignInImplCopyWithImpl(
      _$SuccessSignInImpl _value, $Res Function(_$SuccessSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessSignInImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthResponse,
    ));
  }
}

/// @nodoc

class _$SuccessSignInImpl implements _SuccessSignIn {
  const _$SuccessSignInImpl(this.data);

  @override
  final AuthResponse data;

  @override
  String toString() {
    return 'AuthState.successSignIn(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSignInImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSignInImplCopyWith<_$SuccessSignInImpl> get copyWith =>
      __$$SuccessSignInImplCopyWithImpl<_$SuccessSignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool? isOverlay) loading,
    required TResult Function(dynamic error) error,
    required TResult Function(RegisterResponse data) successSignUp,
    required TResult Function(AuthResponse data) successSignIn,
  }) {
    return successSignIn(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool? isOverlay)? loading,
    TResult? Function(dynamic error)? error,
    TResult? Function(RegisterResponse data)? successSignUp,
    TResult? Function(AuthResponse data)? successSignIn,
  }) {
    return successSignIn?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool? isOverlay)? loading,
    TResult Function(dynamic error)? error,
    TResult Function(RegisterResponse data)? successSignUp,
    TResult Function(AuthResponse data)? successSignIn,
    required TResult orElse(),
  }) {
    if (successSignIn != null) {
      return successSignIn(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_SuccessSignUp value) successSignUp,
    required TResult Function(_SuccessSignIn value) successSignIn,
  }) {
    return successSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_SuccessSignUp value)? successSignUp,
    TResult? Function(_SuccessSignIn value)? successSignIn,
  }) {
    return successSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_SuccessSignUp value)? successSignUp,
    TResult Function(_SuccessSignIn value)? successSignIn,
    required TResult orElse(),
  }) {
    if (successSignIn != null) {
      return successSignIn(this);
    }
    return orElse();
  }
}

abstract class _SuccessSignIn implements AuthState {
  const factory _SuccessSignIn(final AuthResponse data) = _$SuccessSignInImpl;

  AuthResponse get data;
  @JsonKey(ignore: true)
  _$$SuccessSignInImplCopyWith<_$SuccessSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
