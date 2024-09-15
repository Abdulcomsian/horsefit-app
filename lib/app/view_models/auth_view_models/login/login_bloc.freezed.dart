// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() togglePasswordVisibility,
    required TResult Function() login,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithfacebook,
    required TResult Function() signInWithapple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? login,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithfacebook,
    TResult? Function()? signInWithapple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? togglePasswordVisibility,
    TResult Function()? login,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithfacebook,
    TResult Function()? signInWithapple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(Login value) login,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInWithFacebook value) signInWithfacebook,
    required TResult Function(SignInWithApple value) signInWithapple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(Login value)? login,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(SignInWithFacebook value)? signInWithfacebook,
    TResult? Function(SignInWithApple value)? signInWithapple,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(Login value)? login,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInWithFacebook value)? signInWithfacebook,
    TResult Function(SignInWithApple value)? signInWithapple,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TogglePasswordVisibilityImplCopyWith<$Res> {
  factory _$$TogglePasswordVisibilityImplCopyWith(
          _$TogglePasswordVisibilityImpl value,
          $Res Function(_$TogglePasswordVisibilityImpl) then) =
      __$$TogglePasswordVisibilityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TogglePasswordVisibilityImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$TogglePasswordVisibilityImpl>
    implements _$$TogglePasswordVisibilityImplCopyWith<$Res> {
  __$$TogglePasswordVisibilityImplCopyWithImpl(
      _$TogglePasswordVisibilityImpl _value,
      $Res Function(_$TogglePasswordVisibilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TogglePasswordVisibilityImpl implements TogglePasswordVisibility {
  const _$TogglePasswordVisibilityImpl();

  @override
  String toString() {
    return 'LoginEvent.togglePasswordVisibility()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TogglePasswordVisibilityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() togglePasswordVisibility,
    required TResult Function() login,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithfacebook,
    required TResult Function() signInWithapple,
  }) {
    return togglePasswordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? login,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithfacebook,
    TResult? Function()? signInWithapple,
  }) {
    return togglePasswordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? togglePasswordVisibility,
    TResult Function()? login,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithfacebook,
    TResult Function()? signInWithapple,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(Login value) login,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInWithFacebook value) signInWithfacebook,
    required TResult Function(SignInWithApple value) signInWithapple,
  }) {
    return togglePasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(Login value)? login,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(SignInWithFacebook value)? signInWithfacebook,
    TResult? Function(SignInWithApple value)? signInWithapple,
  }) {
    return togglePasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(Login value)? login,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInWithFacebook value)? signInWithfacebook,
    TResult Function(SignInWithApple value)? signInWithapple,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class TogglePasswordVisibility implements LoginEvent {
  const factory TogglePasswordVisibility() = _$TogglePasswordVisibilityImpl;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginImpl implements Login {
  const _$LoginImpl();

  @override
  String toString() {
    return 'LoginEvent.login()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() togglePasswordVisibility,
    required TResult Function() login,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithfacebook,
    required TResult Function() signInWithapple,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? login,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithfacebook,
    TResult? Function()? signInWithapple,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? togglePasswordVisibility,
    TResult Function()? login,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithfacebook,
    TResult Function()? signInWithapple,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(Login value) login,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInWithFacebook value) signInWithfacebook,
    required TResult Function(SignInWithApple value) signInWithapple,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(Login value)? login,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(SignInWithFacebook value)? signInWithfacebook,
    TResult? Function(SignInWithApple value)? signInWithapple,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(Login value)? login,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInWithFacebook value)? signInWithfacebook,
    TResult Function(SignInWithApple value)? signInWithapple,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements LoginEvent {
  const factory Login() = _$LoginImpl;
}

/// @nodoc
abstract class _$$SignInWithGoogleImplCopyWith<$Res> {
  factory _$$SignInWithGoogleImplCopyWith(_$SignInWithGoogleImpl value,
          $Res Function(_$SignInWithGoogleImpl) then) =
      __$$SignInWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGoogleImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SignInWithGoogleImpl>
    implements _$$SignInWithGoogleImplCopyWith<$Res> {
  __$$SignInWithGoogleImplCopyWithImpl(_$SignInWithGoogleImpl _value,
      $Res Function(_$SignInWithGoogleImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInWithGoogleImpl implements SignInWithGoogle {
  const _$SignInWithGoogleImpl();

  @override
  String toString() {
    return 'LoginEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() togglePasswordVisibility,
    required TResult Function() login,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithfacebook,
    required TResult Function() signInWithapple,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? login,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithfacebook,
    TResult? Function()? signInWithapple,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? togglePasswordVisibility,
    TResult Function()? login,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithfacebook,
    TResult Function()? signInWithapple,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(Login value) login,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInWithFacebook value) signInWithfacebook,
    required TResult Function(SignInWithApple value) signInWithapple,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(Login value)? login,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(SignInWithFacebook value)? signInWithfacebook,
    TResult? Function(SignInWithApple value)? signInWithapple,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(Login value)? login,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInWithFacebook value)? signInWithfacebook,
    TResult Function(SignInWithApple value)? signInWithapple,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements LoginEvent {
  const factory SignInWithGoogle() = _$SignInWithGoogleImpl;
}

/// @nodoc
abstract class _$$SignInWithFacebookImplCopyWith<$Res> {
  factory _$$SignInWithFacebookImplCopyWith(_$SignInWithFacebookImpl value,
          $Res Function(_$SignInWithFacebookImpl) then) =
      __$$SignInWithFacebookImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithFacebookImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SignInWithFacebookImpl>
    implements _$$SignInWithFacebookImplCopyWith<$Res> {
  __$$SignInWithFacebookImplCopyWithImpl(_$SignInWithFacebookImpl _value,
      $Res Function(_$SignInWithFacebookImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInWithFacebookImpl implements SignInWithFacebook {
  const _$SignInWithFacebookImpl();

  @override
  String toString() {
    return 'LoginEvent.signInWithfacebook()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithFacebookImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() togglePasswordVisibility,
    required TResult Function() login,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithfacebook,
    required TResult Function() signInWithapple,
  }) {
    return signInWithfacebook();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? login,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithfacebook,
    TResult? Function()? signInWithapple,
  }) {
    return signInWithfacebook?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? togglePasswordVisibility,
    TResult Function()? login,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithfacebook,
    TResult Function()? signInWithapple,
    required TResult orElse(),
  }) {
    if (signInWithfacebook != null) {
      return signInWithfacebook();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(Login value) login,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInWithFacebook value) signInWithfacebook,
    required TResult Function(SignInWithApple value) signInWithapple,
  }) {
    return signInWithfacebook(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(Login value)? login,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(SignInWithFacebook value)? signInWithfacebook,
    TResult? Function(SignInWithApple value)? signInWithapple,
  }) {
    return signInWithfacebook?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(Login value)? login,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInWithFacebook value)? signInWithfacebook,
    TResult Function(SignInWithApple value)? signInWithapple,
    required TResult orElse(),
  }) {
    if (signInWithfacebook != null) {
      return signInWithfacebook(this);
    }
    return orElse();
  }
}

abstract class SignInWithFacebook implements LoginEvent {
  const factory SignInWithFacebook() = _$SignInWithFacebookImpl;
}

/// @nodoc
abstract class _$$SignInWithAppleImplCopyWith<$Res> {
  factory _$$SignInWithAppleImplCopyWith(_$SignInWithAppleImpl value,
          $Res Function(_$SignInWithAppleImpl) then) =
      __$$SignInWithAppleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithAppleImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SignInWithAppleImpl>
    implements _$$SignInWithAppleImplCopyWith<$Res> {
  __$$SignInWithAppleImplCopyWithImpl(
      _$SignInWithAppleImpl _value, $Res Function(_$SignInWithAppleImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInWithAppleImpl implements SignInWithApple {
  const _$SignInWithAppleImpl();

  @override
  String toString() {
    return 'LoginEvent.signInWithapple()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithAppleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() togglePasswordVisibility,
    required TResult Function() login,
    required TResult Function() signInWithGoogle,
    required TResult Function() signInWithfacebook,
    required TResult Function() signInWithapple,
  }) {
    return signInWithapple();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? login,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? signInWithfacebook,
    TResult? Function()? signInWithapple,
  }) {
    return signInWithapple?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? togglePasswordVisibility,
    TResult Function()? login,
    TResult Function()? signInWithGoogle,
    TResult Function()? signInWithfacebook,
    TResult Function()? signInWithapple,
    required TResult orElse(),
  }) {
    if (signInWithapple != null) {
      return signInWithapple();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(Login value) login,
    required TResult Function(SignInWithGoogle value) signInWithGoogle,
    required TResult Function(SignInWithFacebook value) signInWithfacebook,
    required TResult Function(SignInWithApple value) signInWithapple,
  }) {
    return signInWithapple(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(Login value)? login,
    TResult? Function(SignInWithGoogle value)? signInWithGoogle,
    TResult? Function(SignInWithFacebook value)? signInWithfacebook,
    TResult? Function(SignInWithApple value)? signInWithapple,
  }) {
    return signInWithapple?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(Login value)? login,
    TResult Function(SignInWithGoogle value)? signInWithGoogle,
    TResult Function(SignInWithFacebook value)? signInWithfacebook,
    TResult Function(SignInWithApple value)? signInWithapple,
    required TResult orElse(),
  }) {
    if (signInWithapple != null) {
      return signInWithapple(this);
    }
    return orElse();
  }
}

abstract class SignInWithApple implements LoginEvent {
  const factory SignInWithApple() = _$SignInWithAppleImpl;
}

/// @nodoc
mixin _$LoginState {
  RequestStatus get status => throw _privateConstructorUsedError;
  RequestStatus get socialAuthStatus => throw _privateConstructorUsedError;
  bool get isPasswordVisible => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestStatus status,
            RequestStatus socialAuthStatus, bool isPasswordVisible)
        loginState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus status, RequestStatus socialAuthStatus,
            bool isPasswordVisible)?
        loginState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus status, RequestStatus socialAuthStatus,
            bool isPasswordVisible)?
        loginState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) loginState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? loginState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {RequestStatus status,
      RequestStatus socialAuthStatus,
      bool isPasswordVisible});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? socialAuthStatus = null,
    Object? isPasswordVisible = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      socialAuthStatus: null == socialAuthStatus
          ? _value.socialAuthStatus
          : socialAuthStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus status,
      RequestStatus socialAuthStatus,
      bool isPasswordVisible});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? socialAuthStatus = null,
    Object? isPasswordVisible = null,
  }) {
    return _then(_$LoginStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      socialAuthStatus: null == socialAuthStatus
          ? _value.socialAuthStatus
          : socialAuthStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {this.status = const InitialRequestStatus(),
      this.socialAuthStatus = const InitialRequestStatus(),
      this.isPasswordVisible = true});

  @override
  @JsonKey()
  final RequestStatus status;
  @override
  @JsonKey()
  final RequestStatus socialAuthStatus;
  @override
  @JsonKey()
  final bool isPasswordVisible;

  @override
  String toString() {
    return 'LoginState.loginState(status: $status, socialAuthStatus: $socialAuthStatus, isPasswordVisible: $isPasswordVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.socialAuthStatus, socialAuthStatus) ||
                other.socialAuthStatus == socialAuthStatus) &&
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                other.isPasswordVisible == isPasswordVisible));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, socialAuthStatus, isPasswordVisible);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestStatus status,
            RequestStatus socialAuthStatus, bool isPasswordVisible)
        loginState,
  }) {
    return loginState(status, socialAuthStatus, isPasswordVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus status, RequestStatus socialAuthStatus,
            bool isPasswordVisible)?
        loginState,
  }) {
    return loginState?.call(status, socialAuthStatus, isPasswordVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus status, RequestStatus socialAuthStatus,
            bool isPasswordVisible)?
        loginState,
    required TResult orElse(),
  }) {
    if (loginState != null) {
      return loginState(status, socialAuthStatus, isPasswordVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) loginState,
  }) {
    return loginState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? loginState,
  }) {
    return loginState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? loginState,
    required TResult orElse(),
  }) {
    if (loginState != null) {
      return loginState(this);
    }
    return orElse();
  }
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final RequestStatus status,
      final RequestStatus socialAuthStatus,
      final bool isPasswordVisible}) = _$LoginStateImpl;

  @override
  RequestStatus get status;
  @override
  RequestStatus get socialAuthStatus;
  @override
  bool get isPasswordVisible;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
