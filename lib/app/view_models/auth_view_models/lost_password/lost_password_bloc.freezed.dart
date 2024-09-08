// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lost_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LostPasswordEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) isValidEmail,
    required TResult Function(String email) sendPasswordResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? isValidEmail,
    TResult? Function(String email)? sendPasswordResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? isValidEmail,
    TResult Function(String email)? sendPasswordResetEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsValidEmail value) isValidEmail,
    required TResult Function(SendPasswordResetEmail value)
        sendPasswordResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsValidEmail value)? isValidEmail,
    TResult? Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsValidEmail value)? isValidEmail,
    TResult Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of LostPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LostPasswordEventCopyWith<LostPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LostPasswordEventCopyWith<$Res> {
  factory $LostPasswordEventCopyWith(
          LostPasswordEvent value, $Res Function(LostPasswordEvent) then) =
      _$LostPasswordEventCopyWithImpl<$Res, LostPasswordEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$LostPasswordEventCopyWithImpl<$Res, $Val extends LostPasswordEvent>
    implements $LostPasswordEventCopyWith<$Res> {
  _$LostPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LostPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IsValidEmailImplCopyWith<$Res>
    implements $LostPasswordEventCopyWith<$Res> {
  factory _$$IsValidEmailImplCopyWith(
          _$IsValidEmailImpl value, $Res Function(_$IsValidEmailImpl) then) =
      __$$IsValidEmailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$IsValidEmailImplCopyWithImpl<$Res>
    extends _$LostPasswordEventCopyWithImpl<$Res, _$IsValidEmailImpl>
    implements _$$IsValidEmailImplCopyWith<$Res> {
  __$$IsValidEmailImplCopyWithImpl(
      _$IsValidEmailImpl _value, $Res Function(_$IsValidEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of LostPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$IsValidEmailImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsValidEmailImpl implements IsValidEmail {
  const _$IsValidEmailImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'LostPasswordEvent.isValidEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsValidEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of LostPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IsValidEmailImplCopyWith<_$IsValidEmailImpl> get copyWith =>
      __$$IsValidEmailImplCopyWithImpl<_$IsValidEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) isValidEmail,
    required TResult Function(String email) sendPasswordResetEmail,
  }) {
    return isValidEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? isValidEmail,
    TResult? Function(String email)? sendPasswordResetEmail,
  }) {
    return isValidEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? isValidEmail,
    TResult Function(String email)? sendPasswordResetEmail,
    required TResult orElse(),
  }) {
    if (isValidEmail != null) {
      return isValidEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsValidEmail value) isValidEmail,
    required TResult Function(SendPasswordResetEmail value)
        sendPasswordResetEmail,
  }) {
    return isValidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsValidEmail value)? isValidEmail,
    TResult? Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
  }) {
    return isValidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsValidEmail value)? isValidEmail,
    TResult Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    required TResult orElse(),
  }) {
    if (isValidEmail != null) {
      return isValidEmail(this);
    }
    return orElse();
  }
}

abstract class IsValidEmail implements LostPasswordEvent {
  const factory IsValidEmail({required final String email}) =
      _$IsValidEmailImpl;

  @override
  String get email;

  /// Create a copy of LostPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IsValidEmailImplCopyWith<_$IsValidEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendPasswordResetEmailImplCopyWith<$Res>
    implements $LostPasswordEventCopyWith<$Res> {
  factory _$$SendPasswordResetEmailImplCopyWith(
          _$SendPasswordResetEmailImpl value,
          $Res Function(_$SendPasswordResetEmailImpl) then) =
      __$$SendPasswordResetEmailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendPasswordResetEmailImplCopyWithImpl<$Res>
    extends _$LostPasswordEventCopyWithImpl<$Res, _$SendPasswordResetEmailImpl>
    implements _$$SendPasswordResetEmailImplCopyWith<$Res> {
  __$$SendPasswordResetEmailImplCopyWithImpl(
      _$SendPasswordResetEmailImpl _value,
      $Res Function(_$SendPasswordResetEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of LostPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendPasswordResetEmailImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendPasswordResetEmailImpl implements SendPasswordResetEmail {
  const _$SendPasswordResetEmailImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'LostPasswordEvent.sendPasswordResetEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPasswordResetEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of LostPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPasswordResetEmailImplCopyWith<_$SendPasswordResetEmailImpl>
      get copyWith => __$$SendPasswordResetEmailImplCopyWithImpl<
          _$SendPasswordResetEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) isValidEmail,
    required TResult Function(String email) sendPasswordResetEmail,
  }) {
    return sendPasswordResetEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? isValidEmail,
    TResult? Function(String email)? sendPasswordResetEmail,
  }) {
    return sendPasswordResetEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? isValidEmail,
    TResult Function(String email)? sendPasswordResetEmail,
    required TResult orElse(),
  }) {
    if (sendPasswordResetEmail != null) {
      return sendPasswordResetEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IsValidEmail value) isValidEmail,
    required TResult Function(SendPasswordResetEmail value)
        sendPasswordResetEmail,
  }) {
    return sendPasswordResetEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IsValidEmail value)? isValidEmail,
    TResult? Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
  }) {
    return sendPasswordResetEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IsValidEmail value)? isValidEmail,
    TResult Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    required TResult orElse(),
  }) {
    if (sendPasswordResetEmail != null) {
      return sendPasswordResetEmail(this);
    }
    return orElse();
  }
}

abstract class SendPasswordResetEmail implements LostPasswordEvent {
  const factory SendPasswordResetEmail({required final String email}) =
      _$SendPasswordResetEmailImpl;

  @override
  String get email;

  /// Create a copy of LostPasswordEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendPasswordResetEmailImplCopyWith<_$SendPasswordResetEmailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LostPasswordState {
  RequestStatus get status => throw _privateConstructorUsedError;
  bool get isValidEmail => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestStatus status, bool isValidEmail)
        lostPasswordState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus status, bool isValidEmail)?
        lostPasswordState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus status, bool isValidEmail)?
        lostPasswordState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LostPasswordState value) lostPasswordState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LostPasswordState value)? lostPasswordState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LostPasswordState value)? lostPasswordState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of LostPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LostPasswordStateCopyWith<LostPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LostPasswordStateCopyWith<$Res> {
  factory $LostPasswordStateCopyWith(
          LostPasswordState value, $Res Function(LostPasswordState) then) =
      _$LostPasswordStateCopyWithImpl<$Res, LostPasswordState>;
  @useResult
  $Res call({RequestStatus status, bool isValidEmail});
}

/// @nodoc
class _$LostPasswordStateCopyWithImpl<$Res, $Val extends LostPasswordState>
    implements $LostPasswordStateCopyWith<$Res> {
  _$LostPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LostPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isValidEmail = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      isValidEmail: null == isValidEmail
          ? _value.isValidEmail
          : isValidEmail // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LostPasswordStateImplCopyWith<$Res>
    implements $LostPasswordStateCopyWith<$Res> {
  factory _$$LostPasswordStateImplCopyWith(_$LostPasswordStateImpl value,
          $Res Function(_$LostPasswordStateImpl) then) =
      __$$LostPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestStatus status, bool isValidEmail});
}

/// @nodoc
class __$$LostPasswordStateImplCopyWithImpl<$Res>
    extends _$LostPasswordStateCopyWithImpl<$Res, _$LostPasswordStateImpl>
    implements _$$LostPasswordStateImplCopyWith<$Res> {
  __$$LostPasswordStateImplCopyWithImpl(_$LostPasswordStateImpl _value,
      $Res Function(_$LostPasswordStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LostPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isValidEmail = null,
  }) {
    return _then(_$LostPasswordStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      isValidEmail: null == isValidEmail
          ? _value.isValidEmail
          : isValidEmail // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LostPasswordStateImpl implements _LostPasswordState {
  const _$LostPasswordStateImpl(
      {this.status = const InitialRequestStatus(), this.isValidEmail = false});

  @override
  @JsonKey()
  final RequestStatus status;
  @override
  @JsonKey()
  final bool isValidEmail;

  @override
  String toString() {
    return 'LostPasswordState.lostPasswordState(status: $status, isValidEmail: $isValidEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LostPasswordStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isValidEmail, isValidEmail) ||
                other.isValidEmail == isValidEmail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, isValidEmail);

  /// Create a copy of LostPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LostPasswordStateImplCopyWith<_$LostPasswordStateImpl> get copyWith =>
      __$$LostPasswordStateImplCopyWithImpl<_$LostPasswordStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestStatus status, bool isValidEmail)
        lostPasswordState,
  }) {
    return lostPasswordState(status, isValidEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus status, bool isValidEmail)?
        lostPasswordState,
  }) {
    return lostPasswordState?.call(status, isValidEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus status, bool isValidEmail)?
        lostPasswordState,
    required TResult orElse(),
  }) {
    if (lostPasswordState != null) {
      return lostPasswordState(status, isValidEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LostPasswordState value) lostPasswordState,
  }) {
    return lostPasswordState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LostPasswordState value)? lostPasswordState,
  }) {
    return lostPasswordState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LostPasswordState value)? lostPasswordState,
    required TResult orElse(),
  }) {
    if (lostPasswordState != null) {
      return lostPasswordState(this);
    }
    return orElse();
  }
}

abstract class _LostPasswordState implements LostPasswordState {
  const factory _LostPasswordState(
      {final RequestStatus status,
      final bool isValidEmail}) = _$LostPasswordStateImpl;

  @override
  RequestStatus get status;
  @override
  bool get isValidEmail;

  /// Create a copy of LostPasswordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LostPasswordStateImplCopyWith<_$LostPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
