// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String profilePath) pickProfile,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
    required TResult Function(Gender gender) toggleGender,
    required TResult Function(UserType userType) selectUser,
    required TResult Function() createAccount,
    required TResult Function() toggleEditProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String profilePath)? pickProfile,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmPasswordVisibility,
    TResult? Function(Gender gender)? toggleGender,
    TResult? Function(UserType userType)? selectUser,
    TResult? Function()? createAccount,
    TResult? Function()? toggleEditProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String profilePath)? pickProfile,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    TResult Function(Gender gender)? toggleGender,
    TResult Function(UserType userType)? selectUser,
    TResult Function()? createAccount,
    TResult Function()? toggleEditProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickProfile value) pickProfile,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
    required TResult Function(ToggleGender value) toggleGender,
    required TResult Function(SelectUser value) selectUser,
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(ToggleEditProfile value) toggleEditProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickProfile value)? pickProfile,
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult? Function(ToggleGender value)? toggleGender,
    TResult? Function(SelectUser value)? selectUser,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(ToggleEditProfile value)? toggleEditProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickProfile value)? pickProfile,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult Function(ToggleGender value)? toggleGender,
    TResult Function(SelectUser value)? selectUser,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(ToggleEditProfile value)? toggleEditProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PickProfileImplCopyWith<$Res> {
  factory _$$PickProfileImplCopyWith(
          _$PickProfileImpl value, $Res Function(_$PickProfileImpl) then) =
      __$$PickProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String profilePath});
}

/// @nodoc
class __$$PickProfileImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$PickProfileImpl>
    implements _$$PickProfileImplCopyWith<$Res> {
  __$$PickProfileImplCopyWithImpl(
      _$PickProfileImpl _value, $Res Function(_$PickProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profilePath = null,
  }) {
    return _then(_$PickProfileImpl(
      profilePath: null == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickProfileImpl implements PickProfile {
  const _$PickProfileImpl({required this.profilePath});

  @override
  final String profilePath;

  @override
  String toString() {
    return 'SignUpEvent.pickProfile(profilePath: $profilePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickProfileImpl &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profilePath);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickProfileImplCopyWith<_$PickProfileImpl> get copyWith =>
      __$$PickProfileImplCopyWithImpl<_$PickProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String profilePath) pickProfile,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
    required TResult Function(Gender gender) toggleGender,
    required TResult Function(UserType userType) selectUser,
    required TResult Function() createAccount,
    required TResult Function() toggleEditProfile,
  }) {
    return pickProfile(profilePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String profilePath)? pickProfile,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmPasswordVisibility,
    TResult? Function(Gender gender)? toggleGender,
    TResult? Function(UserType userType)? selectUser,
    TResult? Function()? createAccount,
    TResult? Function()? toggleEditProfile,
  }) {
    return pickProfile?.call(profilePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String profilePath)? pickProfile,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    TResult Function(Gender gender)? toggleGender,
    TResult Function(UserType userType)? selectUser,
    TResult Function()? createAccount,
    TResult Function()? toggleEditProfile,
    required TResult orElse(),
  }) {
    if (pickProfile != null) {
      return pickProfile(profilePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickProfile value) pickProfile,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
    required TResult Function(ToggleGender value) toggleGender,
    required TResult Function(SelectUser value) selectUser,
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(ToggleEditProfile value) toggleEditProfile,
  }) {
    return pickProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickProfile value)? pickProfile,
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult? Function(ToggleGender value)? toggleGender,
    TResult? Function(SelectUser value)? selectUser,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(ToggleEditProfile value)? toggleEditProfile,
  }) {
    return pickProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickProfile value)? pickProfile,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult Function(ToggleGender value)? toggleGender,
    TResult Function(SelectUser value)? selectUser,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(ToggleEditProfile value)? toggleEditProfile,
    required TResult orElse(),
  }) {
    if (pickProfile != null) {
      return pickProfile(this);
    }
    return orElse();
  }
}

abstract class PickProfile implements SignUpEvent {
  const factory PickProfile({required final String profilePath}) =
      _$PickProfileImpl;

  String get profilePath;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickProfileImplCopyWith<_$PickProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$SignUpEventCopyWithImpl<$Res, _$TogglePasswordVisibilityImpl>
    implements _$$TogglePasswordVisibilityImplCopyWith<$Res> {
  __$$TogglePasswordVisibilityImplCopyWithImpl(
      _$TogglePasswordVisibilityImpl _value,
      $Res Function(_$TogglePasswordVisibilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TogglePasswordVisibilityImpl implements TogglePasswordVisibility {
  const _$TogglePasswordVisibilityImpl();

  @override
  String toString() {
    return 'SignUpEvent.togglePasswordVisibility()';
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
    required TResult Function(String profilePath) pickProfile,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
    required TResult Function(Gender gender) toggleGender,
    required TResult Function(UserType userType) selectUser,
    required TResult Function() createAccount,
    required TResult Function() toggleEditProfile,
  }) {
    return togglePasswordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String profilePath)? pickProfile,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmPasswordVisibility,
    TResult? Function(Gender gender)? toggleGender,
    TResult? Function(UserType userType)? selectUser,
    TResult? Function()? createAccount,
    TResult? Function()? toggleEditProfile,
  }) {
    return togglePasswordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String profilePath)? pickProfile,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    TResult Function(Gender gender)? toggleGender,
    TResult Function(UserType userType)? selectUser,
    TResult Function()? createAccount,
    TResult Function()? toggleEditProfile,
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
    required TResult Function(PickProfile value) pickProfile,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
    required TResult Function(ToggleGender value) toggleGender,
    required TResult Function(SelectUser value) selectUser,
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(ToggleEditProfile value) toggleEditProfile,
  }) {
    return togglePasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickProfile value)? pickProfile,
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult? Function(ToggleGender value)? toggleGender,
    TResult? Function(SelectUser value)? selectUser,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(ToggleEditProfile value)? toggleEditProfile,
  }) {
    return togglePasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickProfile value)? pickProfile,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult Function(ToggleGender value)? toggleGender,
    TResult Function(SelectUser value)? selectUser,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(ToggleEditProfile value)? toggleEditProfile,
    required TResult orElse(),
  }) {
    if (togglePasswordVisibility != null) {
      return togglePasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class TogglePasswordVisibility implements SignUpEvent {
  const factory TogglePasswordVisibility() = _$TogglePasswordVisibilityImpl;
}

/// @nodoc
abstract class _$$ToggleConfirmPasswordVisibilityImplCopyWith<$Res> {
  factory _$$ToggleConfirmPasswordVisibilityImplCopyWith(
          _$ToggleConfirmPasswordVisibilityImpl value,
          $Res Function(_$ToggleConfirmPasswordVisibilityImpl) then) =
      __$$ToggleConfirmPasswordVisibilityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleConfirmPasswordVisibilityImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res,
        _$ToggleConfirmPasswordVisibilityImpl>
    implements _$$ToggleConfirmPasswordVisibilityImplCopyWith<$Res> {
  __$$ToggleConfirmPasswordVisibilityImplCopyWithImpl(
      _$ToggleConfirmPasswordVisibilityImpl _value,
      $Res Function(_$ToggleConfirmPasswordVisibilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleConfirmPasswordVisibilityImpl
    implements ToggleConfirmPasswordVisibility {
  const _$ToggleConfirmPasswordVisibilityImpl();

  @override
  String toString() {
    return 'SignUpEvent.toggleConfirmPasswordVisibility()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleConfirmPasswordVisibilityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String profilePath) pickProfile,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
    required TResult Function(Gender gender) toggleGender,
    required TResult Function(UserType userType) selectUser,
    required TResult Function() createAccount,
    required TResult Function() toggleEditProfile,
  }) {
    return toggleConfirmPasswordVisibility();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String profilePath)? pickProfile,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmPasswordVisibility,
    TResult? Function(Gender gender)? toggleGender,
    TResult? Function(UserType userType)? selectUser,
    TResult? Function()? createAccount,
    TResult? Function()? toggleEditProfile,
  }) {
    return toggleConfirmPasswordVisibility?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String profilePath)? pickProfile,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    TResult Function(Gender gender)? toggleGender,
    TResult Function(UserType userType)? selectUser,
    TResult Function()? createAccount,
    TResult Function()? toggleEditProfile,
    required TResult orElse(),
  }) {
    if (toggleConfirmPasswordVisibility != null) {
      return toggleConfirmPasswordVisibility();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickProfile value) pickProfile,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
    required TResult Function(ToggleGender value) toggleGender,
    required TResult Function(SelectUser value) selectUser,
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(ToggleEditProfile value) toggleEditProfile,
  }) {
    return toggleConfirmPasswordVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickProfile value)? pickProfile,
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult? Function(ToggleGender value)? toggleGender,
    TResult? Function(SelectUser value)? selectUser,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(ToggleEditProfile value)? toggleEditProfile,
  }) {
    return toggleConfirmPasswordVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickProfile value)? pickProfile,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult Function(ToggleGender value)? toggleGender,
    TResult Function(SelectUser value)? selectUser,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(ToggleEditProfile value)? toggleEditProfile,
    required TResult orElse(),
  }) {
    if (toggleConfirmPasswordVisibility != null) {
      return toggleConfirmPasswordVisibility(this);
    }
    return orElse();
  }
}

abstract class ToggleConfirmPasswordVisibility implements SignUpEvent {
  const factory ToggleConfirmPasswordVisibility() =
      _$ToggleConfirmPasswordVisibilityImpl;
}

/// @nodoc
abstract class _$$ToggleGenderImplCopyWith<$Res> {
  factory _$$ToggleGenderImplCopyWith(
          _$ToggleGenderImpl value, $Res Function(_$ToggleGenderImpl) then) =
      __$$ToggleGenderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Gender gender});
}

/// @nodoc
class __$$ToggleGenderImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$ToggleGenderImpl>
    implements _$$ToggleGenderImplCopyWith<$Res> {
  __$$ToggleGenderImplCopyWithImpl(
      _$ToggleGenderImpl _value, $Res Function(_$ToggleGenderImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
  }) {
    return _then(_$ToggleGenderImpl(
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
    ));
  }
}

/// @nodoc

class _$ToggleGenderImpl implements ToggleGender {
  const _$ToggleGenderImpl({required this.gender});

  @override
  final Gender gender;

  @override
  String toString() {
    return 'SignUpEvent.toggleGender(gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleGenderImpl &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gender);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleGenderImplCopyWith<_$ToggleGenderImpl> get copyWith =>
      __$$ToggleGenderImplCopyWithImpl<_$ToggleGenderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String profilePath) pickProfile,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
    required TResult Function(Gender gender) toggleGender,
    required TResult Function(UserType userType) selectUser,
    required TResult Function() createAccount,
    required TResult Function() toggleEditProfile,
  }) {
    return toggleGender(gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String profilePath)? pickProfile,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmPasswordVisibility,
    TResult? Function(Gender gender)? toggleGender,
    TResult? Function(UserType userType)? selectUser,
    TResult? Function()? createAccount,
    TResult? Function()? toggleEditProfile,
  }) {
    return toggleGender?.call(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String profilePath)? pickProfile,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    TResult Function(Gender gender)? toggleGender,
    TResult Function(UserType userType)? selectUser,
    TResult Function()? createAccount,
    TResult Function()? toggleEditProfile,
    required TResult orElse(),
  }) {
    if (toggleGender != null) {
      return toggleGender(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickProfile value) pickProfile,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
    required TResult Function(ToggleGender value) toggleGender,
    required TResult Function(SelectUser value) selectUser,
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(ToggleEditProfile value) toggleEditProfile,
  }) {
    return toggleGender(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickProfile value)? pickProfile,
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult? Function(ToggleGender value)? toggleGender,
    TResult? Function(SelectUser value)? selectUser,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(ToggleEditProfile value)? toggleEditProfile,
  }) {
    return toggleGender?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickProfile value)? pickProfile,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult Function(ToggleGender value)? toggleGender,
    TResult Function(SelectUser value)? selectUser,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(ToggleEditProfile value)? toggleEditProfile,
    required TResult orElse(),
  }) {
    if (toggleGender != null) {
      return toggleGender(this);
    }
    return orElse();
  }
}

abstract class ToggleGender implements SignUpEvent {
  const factory ToggleGender({required final Gender gender}) =
      _$ToggleGenderImpl;

  Gender get gender;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleGenderImplCopyWith<_$ToggleGenderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectUserImplCopyWith<$Res> {
  factory _$$SelectUserImplCopyWith(
          _$SelectUserImpl value, $Res Function(_$SelectUserImpl) then) =
      __$$SelectUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserType userType});
}

/// @nodoc
class __$$SelectUserImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SelectUserImpl>
    implements _$$SelectUserImplCopyWith<$Res> {
  __$$SelectUserImplCopyWithImpl(
      _$SelectUserImpl _value, $Res Function(_$SelectUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userType = null,
  }) {
    return _then(_$SelectUserImpl(
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
    ));
  }
}

/// @nodoc

class _$SelectUserImpl implements SelectUser {
  const _$SelectUserImpl({required this.userType});

  @override
  final UserType userType;

  @override
  String toString() {
    return 'SignUpEvent.selectUser(userType: $userType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectUserImpl &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userType);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectUserImplCopyWith<_$SelectUserImpl> get copyWith =>
      __$$SelectUserImplCopyWithImpl<_$SelectUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String profilePath) pickProfile,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
    required TResult Function(Gender gender) toggleGender,
    required TResult Function(UserType userType) selectUser,
    required TResult Function() createAccount,
    required TResult Function() toggleEditProfile,
  }) {
    return selectUser(userType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String profilePath)? pickProfile,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmPasswordVisibility,
    TResult? Function(Gender gender)? toggleGender,
    TResult? Function(UserType userType)? selectUser,
    TResult? Function()? createAccount,
    TResult? Function()? toggleEditProfile,
  }) {
    return selectUser?.call(userType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String profilePath)? pickProfile,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    TResult Function(Gender gender)? toggleGender,
    TResult Function(UserType userType)? selectUser,
    TResult Function()? createAccount,
    TResult Function()? toggleEditProfile,
    required TResult orElse(),
  }) {
    if (selectUser != null) {
      return selectUser(userType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickProfile value) pickProfile,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
    required TResult Function(ToggleGender value) toggleGender,
    required TResult Function(SelectUser value) selectUser,
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(ToggleEditProfile value) toggleEditProfile,
  }) {
    return selectUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickProfile value)? pickProfile,
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult? Function(ToggleGender value)? toggleGender,
    TResult? Function(SelectUser value)? selectUser,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(ToggleEditProfile value)? toggleEditProfile,
  }) {
    return selectUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickProfile value)? pickProfile,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult Function(ToggleGender value)? toggleGender,
    TResult Function(SelectUser value)? selectUser,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(ToggleEditProfile value)? toggleEditProfile,
    required TResult orElse(),
  }) {
    if (selectUser != null) {
      return selectUser(this);
    }
    return orElse();
  }
}

abstract class SelectUser implements SignUpEvent {
  const factory SelectUser({required final UserType userType}) =
      _$SelectUserImpl;

  UserType get userType;

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectUserImplCopyWith<_$SelectUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateAccountImplCopyWith<$Res> {
  factory _$$CreateAccountImplCopyWith(
          _$CreateAccountImpl value, $Res Function(_$CreateAccountImpl) then) =
      __$$CreateAccountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateAccountImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$CreateAccountImpl>
    implements _$$CreateAccountImplCopyWith<$Res> {
  __$$CreateAccountImplCopyWithImpl(
      _$CreateAccountImpl _value, $Res Function(_$CreateAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CreateAccountImpl implements CreateAccount {
  const _$CreateAccountImpl();

  @override
  String toString() {
    return 'SignUpEvent.createAccount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateAccountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String profilePath) pickProfile,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
    required TResult Function(Gender gender) toggleGender,
    required TResult Function(UserType userType) selectUser,
    required TResult Function() createAccount,
    required TResult Function() toggleEditProfile,
  }) {
    return createAccount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String profilePath)? pickProfile,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmPasswordVisibility,
    TResult? Function(Gender gender)? toggleGender,
    TResult? Function(UserType userType)? selectUser,
    TResult? Function()? createAccount,
    TResult? Function()? toggleEditProfile,
  }) {
    return createAccount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String profilePath)? pickProfile,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    TResult Function(Gender gender)? toggleGender,
    TResult Function(UserType userType)? selectUser,
    TResult Function()? createAccount,
    TResult Function()? toggleEditProfile,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickProfile value) pickProfile,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
    required TResult Function(ToggleGender value) toggleGender,
    required TResult Function(SelectUser value) selectUser,
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(ToggleEditProfile value) toggleEditProfile,
  }) {
    return createAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickProfile value)? pickProfile,
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult? Function(ToggleGender value)? toggleGender,
    TResult? Function(SelectUser value)? selectUser,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(ToggleEditProfile value)? toggleEditProfile,
  }) {
    return createAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickProfile value)? pickProfile,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult Function(ToggleGender value)? toggleGender,
    TResult Function(SelectUser value)? selectUser,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(ToggleEditProfile value)? toggleEditProfile,
    required TResult orElse(),
  }) {
    if (createAccount != null) {
      return createAccount(this);
    }
    return orElse();
  }
}

abstract class CreateAccount implements SignUpEvent {
  const factory CreateAccount() = _$CreateAccountImpl;
}

/// @nodoc
abstract class _$$ToggleEditProfileImplCopyWith<$Res> {
  factory _$$ToggleEditProfileImplCopyWith(_$ToggleEditProfileImpl value,
          $Res Function(_$ToggleEditProfileImpl) then) =
      __$$ToggleEditProfileImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleEditProfileImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$ToggleEditProfileImpl>
    implements _$$ToggleEditProfileImplCopyWith<$Res> {
  __$$ToggleEditProfileImplCopyWithImpl(_$ToggleEditProfileImpl _value,
      $Res Function(_$ToggleEditProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleEditProfileImpl implements ToggleEditProfile {
  const _$ToggleEditProfileImpl();

  @override
  String toString() {
    return 'SignUpEvent.toggleEditProfile()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleEditProfileImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String profilePath) pickProfile,
    required TResult Function() togglePasswordVisibility,
    required TResult Function() toggleConfirmPasswordVisibility,
    required TResult Function(Gender gender) toggleGender,
    required TResult Function(UserType userType) selectUser,
    required TResult Function() createAccount,
    required TResult Function() toggleEditProfile,
  }) {
    return toggleEditProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String profilePath)? pickProfile,
    TResult? Function()? togglePasswordVisibility,
    TResult? Function()? toggleConfirmPasswordVisibility,
    TResult? Function(Gender gender)? toggleGender,
    TResult? Function(UserType userType)? selectUser,
    TResult? Function()? createAccount,
    TResult? Function()? toggleEditProfile,
  }) {
    return toggleEditProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String profilePath)? pickProfile,
    TResult Function()? togglePasswordVisibility,
    TResult Function()? toggleConfirmPasswordVisibility,
    TResult Function(Gender gender)? toggleGender,
    TResult Function(UserType userType)? selectUser,
    TResult Function()? createAccount,
    TResult Function()? toggleEditProfile,
    required TResult orElse(),
  }) {
    if (toggleEditProfile != null) {
      return toggleEditProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickProfile value) pickProfile,
    required TResult Function(TogglePasswordVisibility value)
        togglePasswordVisibility,
    required TResult Function(ToggleConfirmPasswordVisibility value)
        toggleConfirmPasswordVisibility,
    required TResult Function(ToggleGender value) toggleGender,
    required TResult Function(SelectUser value) selectUser,
    required TResult Function(CreateAccount value) createAccount,
    required TResult Function(ToggleEditProfile value) toggleEditProfile,
  }) {
    return toggleEditProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickProfile value)? pickProfile,
    TResult? Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult? Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult? Function(ToggleGender value)? toggleGender,
    TResult? Function(SelectUser value)? selectUser,
    TResult? Function(CreateAccount value)? createAccount,
    TResult? Function(ToggleEditProfile value)? toggleEditProfile,
  }) {
    return toggleEditProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickProfile value)? pickProfile,
    TResult Function(TogglePasswordVisibility value)? togglePasswordVisibility,
    TResult Function(ToggleConfirmPasswordVisibility value)?
        toggleConfirmPasswordVisibility,
    TResult Function(ToggleGender value)? toggleGender,
    TResult Function(SelectUser value)? selectUser,
    TResult Function(CreateAccount value)? createAccount,
    TResult Function(ToggleEditProfile value)? toggleEditProfile,
    required TResult orElse(),
  }) {
    if (toggleEditProfile != null) {
      return toggleEditProfile(this);
    }
    return orElse();
  }
}

abstract class ToggleEditProfile implements SignUpEvent {
  const factory ToggleEditProfile() = _$ToggleEditProfileImpl;
}

/// @nodoc
mixin _$SignUpState {
  RequestStatus get status => throw _privateConstructorUsedError;
  String? get profilePath => throw _privateConstructorUsedError;
  bool get isPasswordVisible => throw _privateConstructorUsedError;
  bool get isConfirmPasswordVisible => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  UserType get userType => throw _privateConstructorUsedError;
  bool get isEditProfile => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestStatus status,
            String? profilePath,
            bool isPasswordVisible,
            bool isConfirmPasswordVisible,
            Gender gender,
            UserType userType,
            bool isEditProfile)
        signUpState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestStatus status,
            String? profilePath,
            bool isPasswordVisible,
            bool isConfirmPasswordVisible,
            Gender gender,
            UserType userType,
            bool isEditProfile)?
        signUpState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestStatus status,
            String? profilePath,
            bool isPasswordVisible,
            bool isConfirmPasswordVisible,
            Gender gender,
            UserType userType,
            bool isEditProfile)?
        signUpState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) signUpState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? signUpState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? signUpState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {RequestStatus status,
      String? profilePath,
      bool isPasswordVisible,
      bool isConfirmPasswordVisible,
      Gender gender,
      UserType userType,
      bool isEditProfile});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? profilePath = freezed,
    Object? isPasswordVisible = null,
    Object? isConfirmPasswordVisible = null,
    Object? gender = null,
    Object? userType = null,
    Object? isEditProfile = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordVisible: null == isConfirmPasswordVisible
          ? _value.isConfirmPasswordVisible
          : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      isEditProfile: null == isEditProfile
          ? _value.isEditProfile
          : isEditProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus status,
      String? profilePath,
      bool isPasswordVisible,
      bool isConfirmPasswordVisible,
      Gender gender,
      UserType userType,
      bool isEditProfile});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? profilePath = freezed,
    Object? isPasswordVisible = null,
    Object? isConfirmPasswordVisible = null,
    Object? gender = null,
    Object? userType = null,
    Object? isEditProfile = null,
  }) {
    return _then(_$InitialImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isPasswordVisible: null == isPasswordVisible
          ? _value.isPasswordVisible
          : isPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordVisible: null == isConfirmPasswordVisible
          ? _value.isConfirmPasswordVisible
          : isConfirmPasswordVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      isEditProfile: null == isEditProfile
          ? _value.isEditProfile
          : isEditProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.status = const InitialRequestStatus(),
      this.profilePath,
      this.isPasswordVisible = true,
      this.isConfirmPasswordVisible = true,
      this.gender = Gender.male,
      this.userType = UserType.horseTrainer,
      this.isEditProfile = false});

  @override
  @JsonKey()
  final RequestStatus status;
  @override
  final String? profilePath;
  @override
  @JsonKey()
  final bool isPasswordVisible;
  @override
  @JsonKey()
  final bool isConfirmPasswordVisible;
  @override
  @JsonKey()
  final Gender gender;
  @override
  @JsonKey()
  final UserType userType;
  @override
  @JsonKey()
  final bool isEditProfile;

  @override
  String toString() {
    return 'SignUpState.signUpState(status: $status, profilePath: $profilePath, isPasswordVisible: $isPasswordVisible, isConfirmPasswordVisible: $isConfirmPasswordVisible, gender: $gender, userType: $userType, isEditProfile: $isEditProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath) &&
            (identical(other.isPasswordVisible, isPasswordVisible) ||
                other.isPasswordVisible == isPasswordVisible) &&
            (identical(
                    other.isConfirmPasswordVisible, isConfirmPasswordVisible) ||
                other.isConfirmPasswordVisible == isConfirmPasswordVisible) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.isEditProfile, isEditProfile) ||
                other.isEditProfile == isEditProfile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      profilePath,
      isPasswordVisible,
      isConfirmPasswordVisible,
      gender,
      userType,
      isEditProfile);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestStatus status,
            String? profilePath,
            bool isPasswordVisible,
            bool isConfirmPasswordVisible,
            Gender gender,
            UserType userType,
            bool isEditProfile)
        signUpState,
  }) {
    return signUpState(status, profilePath, isPasswordVisible,
        isConfirmPasswordVisible, gender, userType, isEditProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestStatus status,
            String? profilePath,
            bool isPasswordVisible,
            bool isConfirmPasswordVisible,
            Gender gender,
            UserType userType,
            bool isEditProfile)?
        signUpState,
  }) {
    return signUpState?.call(status, profilePath, isPasswordVisible,
        isConfirmPasswordVisible, gender, userType, isEditProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestStatus status,
            String? profilePath,
            bool isPasswordVisible,
            bool isConfirmPasswordVisible,
            Gender gender,
            UserType userType,
            bool isEditProfile)?
        signUpState,
    required TResult orElse(),
  }) {
    if (signUpState != null) {
      return signUpState(status, profilePath, isPasswordVisible,
          isConfirmPasswordVisible, gender, userType, isEditProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) signUpState,
  }) {
    return signUpState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? signUpState,
  }) {
    return signUpState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? signUpState,
    required TResult orElse(),
  }) {
    if (signUpState != null) {
      return signUpState(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignUpState {
  const factory _Initial(
      {final RequestStatus status,
      final String? profilePath,
      final bool isPasswordVisible,
      final bool isConfirmPasswordVisible,
      final Gender gender,
      final UserType userType,
      final bool isEditProfile}) = _$InitialImpl;

  @override
  RequestStatus get status;
  @override
  String? get profilePath;
  @override
  bool get isPasswordVisible;
  @override
  bool get isConfirmPasswordVisible;
  @override
  Gender get gender;
  @override
  UserType get userType;
  @override
  bool get isEditProfile;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
