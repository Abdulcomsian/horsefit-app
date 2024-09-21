// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_owner_trainer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddOwnerTrainerEvent {
  RoleEnum get role => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RoleEnum role) selectRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RoleEnum role)? selectRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RoleEnum role)? selectRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectRole value) selectRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectRole value)? selectRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectRole value)? selectRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AddOwnerTrainerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddOwnerTrainerEventCopyWith<AddOwnerTrainerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOwnerTrainerEventCopyWith<$Res> {
  factory $AddOwnerTrainerEventCopyWith(AddOwnerTrainerEvent value,
          $Res Function(AddOwnerTrainerEvent) then) =
      _$AddOwnerTrainerEventCopyWithImpl<$Res, AddOwnerTrainerEvent>;
  @useResult
  $Res call({RoleEnum role});
}

/// @nodoc
class _$AddOwnerTrainerEventCopyWithImpl<$Res,
        $Val extends AddOwnerTrainerEvent>
    implements $AddOwnerTrainerEventCopyWith<$Res> {
  _$AddOwnerTrainerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddOwnerTrainerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as RoleEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectRoleImplCopyWith<$Res>
    implements $AddOwnerTrainerEventCopyWith<$Res> {
  factory _$$SelectRoleImplCopyWith(
          _$SelectRoleImpl value, $Res Function(_$SelectRoleImpl) then) =
      __$$SelectRoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RoleEnum role});
}

/// @nodoc
class __$$SelectRoleImplCopyWithImpl<$Res>
    extends _$AddOwnerTrainerEventCopyWithImpl<$Res, _$SelectRoleImpl>
    implements _$$SelectRoleImplCopyWith<$Res> {
  __$$SelectRoleImplCopyWithImpl(
      _$SelectRoleImpl _value, $Res Function(_$SelectRoleImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOwnerTrainerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_$SelectRoleImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as RoleEnum,
    ));
  }
}

/// @nodoc

class _$SelectRoleImpl implements SelectRole {
  const _$SelectRoleImpl({required this.role});

  @override
  final RoleEnum role;

  @override
  String toString() {
    return 'AddOwnerTrainerEvent.selectRole(role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectRoleImpl &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role);

  /// Create a copy of AddOwnerTrainerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectRoleImplCopyWith<_$SelectRoleImpl> get copyWith =>
      __$$SelectRoleImplCopyWithImpl<_$SelectRoleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RoleEnum role) selectRole,
  }) {
    return selectRole(role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RoleEnum role)? selectRole,
  }) {
    return selectRole?.call(role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RoleEnum role)? selectRole,
    required TResult orElse(),
  }) {
    if (selectRole != null) {
      return selectRole(role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectRole value) selectRole,
  }) {
    return selectRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectRole value)? selectRole,
  }) {
    return selectRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectRole value)? selectRole,
    required TResult orElse(),
  }) {
    if (selectRole != null) {
      return selectRole(this);
    }
    return orElse();
  }
}

abstract class SelectRole implements AddOwnerTrainerEvent {
  const factory SelectRole({required final RoleEnum role}) = _$SelectRoleImpl;

  @override
  RoleEnum get role;

  /// Create a copy of AddOwnerTrainerEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectRoleImplCopyWith<_$SelectRoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddOwnerTrainerState {
  RequestStatus get status => throw _privateConstructorUsedError;
  RoleEnum get role => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestStatus status, RoleEnum role)
        addOwnerTrainerState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus status, RoleEnum role)?
        addOwnerTrainerState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus status, RoleEnum role)? addOwnerTrainerState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOwnerTrainerState value) addOwnerTrainerState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOwnerTrainerState value)? addOwnerTrainerState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOwnerTrainerState value)? addOwnerTrainerState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AddOwnerTrainerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddOwnerTrainerStateCopyWith<AddOwnerTrainerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddOwnerTrainerStateCopyWith<$Res> {
  factory $AddOwnerTrainerStateCopyWith(AddOwnerTrainerState value,
          $Res Function(AddOwnerTrainerState) then) =
      _$AddOwnerTrainerStateCopyWithImpl<$Res, AddOwnerTrainerState>;
  @useResult
  $Res call({RequestStatus status, RoleEnum role});
}

/// @nodoc
class _$AddOwnerTrainerStateCopyWithImpl<$Res,
        $Val extends AddOwnerTrainerState>
    implements $AddOwnerTrainerStateCopyWith<$Res> {
  _$AddOwnerTrainerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddOwnerTrainerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as RoleEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddOwnerTrainerStateImplCopyWith<$Res>
    implements $AddOwnerTrainerStateCopyWith<$Res> {
  factory _$$AddOwnerTrainerStateImplCopyWith(_$AddOwnerTrainerStateImpl value,
          $Res Function(_$AddOwnerTrainerStateImpl) then) =
      __$$AddOwnerTrainerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestStatus status, RoleEnum role});
}

/// @nodoc
class __$$AddOwnerTrainerStateImplCopyWithImpl<$Res>
    extends _$AddOwnerTrainerStateCopyWithImpl<$Res, _$AddOwnerTrainerStateImpl>
    implements _$$AddOwnerTrainerStateImplCopyWith<$Res> {
  __$$AddOwnerTrainerStateImplCopyWithImpl(_$AddOwnerTrainerStateImpl _value,
      $Res Function(_$AddOwnerTrainerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddOwnerTrainerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? role = null,
  }) {
    return _then(_$AddOwnerTrainerStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RequestStatus,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as RoleEnum,
    ));
  }
}

/// @nodoc

class _$AddOwnerTrainerStateImpl implements _AddOwnerTrainerState {
  const _$AddOwnerTrainerStateImpl(
      {this.status = const InitialRequestStatus(), this.role = RoleEnum.owner});

  @override
  @JsonKey()
  final RequestStatus status;
  @override
  @JsonKey()
  final RoleEnum role;

  @override
  String toString() {
    return 'AddOwnerTrainerState.addOwnerTrainerState(status: $status, role: $role)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOwnerTrainerStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, role);

  /// Create a copy of AddOwnerTrainerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOwnerTrainerStateImplCopyWith<_$AddOwnerTrainerStateImpl>
      get copyWith =>
          __$$AddOwnerTrainerStateImplCopyWithImpl<_$AddOwnerTrainerStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestStatus status, RoleEnum role)
        addOwnerTrainerState,
  }) {
    return addOwnerTrainerState(status, role);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus status, RoleEnum role)?
        addOwnerTrainerState,
  }) {
    return addOwnerTrainerState?.call(status, role);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus status, RoleEnum role)? addOwnerTrainerState,
    required TResult orElse(),
  }) {
    if (addOwnerTrainerState != null) {
      return addOwnerTrainerState(status, role);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddOwnerTrainerState value) addOwnerTrainerState,
  }) {
    return addOwnerTrainerState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddOwnerTrainerState value)? addOwnerTrainerState,
  }) {
    return addOwnerTrainerState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddOwnerTrainerState value)? addOwnerTrainerState,
    required TResult orElse(),
  }) {
    if (addOwnerTrainerState != null) {
      return addOwnerTrainerState(this);
    }
    return orElse();
  }
}

abstract class _AddOwnerTrainerState implements AddOwnerTrainerState {
  const factory _AddOwnerTrainerState(
      {final RequestStatus status,
      final RoleEnum role}) = _$AddOwnerTrainerStateImpl;

  @override
  RequestStatus get status;
  @override
  RoleEnum get role;

  /// Create a copy of AddOwnerTrainerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddOwnerTrainerStateImplCopyWith<_$AddOwnerTrainerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
